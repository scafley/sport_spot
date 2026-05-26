import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:sport_spot/features/activities/domain/entities/activity.dart';
import 'package:sport_spot/features/activities/domain/usecases/add_activity_usecase.dart';
import 'package:sport_spot/features/activities/domain/usecases/get_activities_usecase.dart';
import 'package:sport_spot/features/activities/domain/usecases/join_activity_usecase.dart';
import 'package:sport_spot/features/activities/presentation/bloc/activities_bloc.dart';
import 'package:sport_spot/features/activities/presentation/bloc/activities_event.dart';
import 'package:sport_spot/features/activities/presentation/bloc/activities_state.dart';

class MockGetActivitiesUseCase extends Mock implements GetActivitiesUsecase {}

class MockAddActivityUseCase extends Mock implements AddActivityUsecase {}

class MockJoinActivityUseCase extends Mock implements JoinActivityUsecase {}

void main() {
  late ActivitiesBloc bloc;
  late MockGetActivitiesUseCase mockGetActivities;
  late MockAddActivityUseCase mockAddActivity;
  late MockJoinActivityUseCase mockJoinActivity;

  setUp(() {
    mockGetActivities = MockGetActivitiesUseCase();
    mockAddActivity = MockAddActivityUseCase();
    mockJoinActivity = MockJoinActivityUseCase();
    bloc = ActivitiesBloc(mockGetActivities, mockJoinActivity, mockAddActivity);
  });

  tearDown(() => bloc.close());

  final tActivities = [
    Activity(
      id: '1',
      title: 'Piłka nożna',
      sport: 'football',
      latitude: 50.0614,
      longitude: 19.9366,
      scheduledAt: 1716300000000,
      maxParticipants: 10,
      currentParticipants: 3,
      organizerId: 'user_1',
    ),
  ];

  group('LoadActivities', () {
    blocTest<ActivitiesBloc, ActivitiesState>(
      'emituje [loading, loaded] gdy sukces',
      build: () {
        when(() => mockGetActivities()).thenAnswer((_) async => tActivities);
        return bloc;
      },
      act: (bloc) => bloc.add(const ActivitiesEvent.loadActivities()),
      expect: () => [
        const ActivitiesState.loading(),
        ActivitiesState.loaded(tActivities),
      ],
    );

    blocTest<ActivitiesBloc, ActivitiesState>(
      'emituje [loading, error] gdy błąd',
      build: () {
        when(() => mockGetActivities()).thenThrow(Exception('Błąd sieci'));
        return bloc;
      },
      act: (bloc) => bloc.add(const ActivitiesEvent.loadActivities()),
      expect: () => [const ActivitiesState.loading(), isA<ActivitiesState>()],
    );
  });

  group('AddActivity', () {
    final tActivity = tActivities.first;

    blocTest<ActivitiesBloc, ActivitiesState>(
      'emituje [loading, loaded] po dodaniu aktywności',
      build: () {
        when(
          () => mockAddActivity(tActivity),
        ).thenAnswer((_) async => tActivity);
        when(() => mockGetActivities()).thenAnswer((_) async => tActivities);
        return bloc;
      },
      act: (bloc) => bloc.add(ActivitiesEvent.addActivity(tActivity)),
      expect: () => [
        const ActivitiesState.loading(),
        ActivitiesState.loaded(tActivities),
      ],
    );
  });
}
