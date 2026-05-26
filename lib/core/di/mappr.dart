import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sport_spot/features/activities/data/models/activity_model.dart';
import 'package:sport_spot/features/activities/domain/entities/activity.dart';
import 'mappr.auto_mappr.dart';

@lazySingleton
@AutoMappr([
  MapType<ActivityModel, Activity>(),
])
class Mappr extends $Mappr {
  const Mappr();
}