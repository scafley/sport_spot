

import 'package:injectable/injectable.dart';
import 'package:sport_spot/features/activities/domain/entities/activity.dart';
import 'package:sport_spot/features/activities/domain/repositories/activity_repository.dart';

@lazySingleton
class AddActivityUsecase {
  final ActivityRepository _repository;

  AddActivityUsecase(this._repository);

  Future<Activity> call(Activity activity) => _repository.createActivity(activity);
}