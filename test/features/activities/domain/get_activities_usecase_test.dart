import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:sport_spot/features/activities/domain/entities/activity.dart';
import 'package:sport_spot/features/activities/domain/repositories/activity_repository.dart';
import 'package:sport_spot/features/activities/domain/usecases/get_activities_usecase.dart';

class MockActivityRepository extends Mock implements ActivityRepository {}

void main() {
  late GetActivitiesUsecase useCase;
  late MockActivityRepository mockRepository;

  setUp(() {
    mockRepository = MockActivityRepository();
    useCase = GetActivitiesUsecase(mockRepository);
  });

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

  test('powinien zwrócić listę aktywności z repository', () async {
    when(
      () => mockRepository.getActivities(),
    ).thenAnswer((_) async => tActivities);

    final result = await useCase();

    expect(result, tActivities);
    verify(() => mockRepository.getActivities()).called(1);
  });

  test('powinien rzucić wyjątek gdy repository zwróci błąd', () async {
    when(
      () => mockRepository.getActivities(),
    ).thenThrow(Exception('Błąd sieci'));

    expect(() => useCase(), throwsException);
  });
}
