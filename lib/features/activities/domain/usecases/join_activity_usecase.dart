

import 'package:injectable/injectable.dart';
import 'package:sport_spot/features/activities/domain/entities/activity.dart';
import 'package:sport_spot/features/activities/domain/repositories/activity_repository.dart';

@lazySingleton
class JoinActivityUsecase {
  final ActivityRepository _repository;

  JoinActivityUsecase(this._repository);

  Future<Activity> call(String id) => _repository.getActivity(id);
}