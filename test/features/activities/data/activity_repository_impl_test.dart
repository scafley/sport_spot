import 'package:drift/drift.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:sport_spot/core/di/mappr.dart';
import 'package:sport_spot/features/activities/data/datasources/local/activity_local_data_source.dart';
import 'package:sport_spot/features/activities/data/datasources/local/app_database.dart';
import 'package:sport_spot/features/activities/data/datasources/remote/activity_remote_data_source.dart';
import 'package:sport_spot/features/activities/data/models/activity_model.dart';
import 'package:sport_spot/features/activities/data/repositories/activity_repository_impl.dart';
import 'package:sport_spot/features/activities/domain/entities/activity.dart';

import 'activity_repository_impl_test.mocks.dart';

@GenerateMocks([ActivityRemoteDataSource, ActivityLocalDataSource, AppDatabase])
void main() {
  late ActivityRepositoryImpl repository;
  late MockActivityRemoteDataSource mockRemote;
  late MockActivityLocalDataSource mockLocal;
  late MockAppDatabase mockDatabase;
  late Mappr mappr;

  setUp(() {
    mockRemote = MockActivityRemoteDataSource();
    mockLocal = MockActivityLocalDataSource();
    mockDatabase = MockAppDatabase();
    mappr = const Mappr();
    repository = ActivityRepositoryImpl(
      mockRemote,
      mockLocal,
      mappr,
      mockDatabase,
    );
  });

  final tModel = ActivityModel(
    id: '1',
    title: 'Piłka nożna',
    sport: 'football',
    latitude: 50.0614,
    longitude: 19.9366,
    scheduledAt: 1716300000000,
    maxParticipants: 10,
    currentParticipants: 3,
    organizerId: 'user_1',
  );

  final tActivity = Activity(
    id: '1',
    title: 'Piłka nożna',
    sport: 'football',
    latitude: 50.0614,
    longitude: 19.9366,
    scheduledAt: 1716300000000,
    maxParticipants: 10,
    currentParticipants: 3,
    organizerId: 'user_1',
  );

  group('getActivities', () {
    test('powinien zwrócić aktywności z API i zapisać do bazy', () async {
      when(mockRemote.getActivities()).thenAnswer((_) async => [tModel]);
      when(mockDatabase.batch(any)).thenAnswer((_) async => {});

      final result = await repository.getActivities();

      expect(result, [tActivity]);
      verify(mockRemote.getActivities()).called(1);
    });

    test('powinien zwrócić dane z cache gdy API rzuci błąd', () async {
      when(mockRemote.getActivities()).thenThrow(Exception('Błąd sieci'));
      when(mockLocal.getActivities()).thenAnswer((_) async => []);

      final result = await repository.getActivities();

      expect(result, []);
      verify(mockLocal.getActivities()).called(1);
    });
  });
}
