import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:sport_spot/features/activities/domain/entities/activity.dart';
import 'package:sport_spot/features/activities/domain/repositories/activity_repository.dart';
import 'package:sport_spot/features/activities/domain/usecases/add_activity_usecase.dart';

class MockActivityRepository extends Mock implements ActivityRepository {}

void main() {
  late AddActivityUsecase useCase;
  late MockActivityRepository mockRepository;

  setUp(() {
    mockRepository = MockActivityRepository();
    useCase = AddActivityUsecase(mockRepository);
  });

  final tActivity = Activity(
    id: '1',
    title: 'Piłka nożna',
    sport: 'football',
    latitude: 50.0614,
    longitude: 19.9366,
    scheduledAt: 1716300000000,
    maxParticipants: 10,
    currentParticipants: 0,
    organizerId: 'user_1',
  );

  test('powinien dodać aktywność przez repository', () async {
    when(
      () => mockRepository.createActivity(tActivity),
    ).thenAnswer((_) async => tActivity);

    final result = await useCase(tActivity);

    expect(result, tActivity);
    verify(() => mockRepository.createActivity(tActivity)).called(1);
  });

  test('powinien rzucić wyjątek gdy repository zwróci błąd', () async {
    when(
      () => mockRepository.createActivity(tActivity),
    ).thenThrow(Exception('Błąd sieci'));

    expect(() => useCase(tActivity), throwsException);
  });
}
