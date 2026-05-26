


import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity_model.freezed.dart';
part 'activity_model.g.dart';

@freezed
abstract class ActivityModel with _$ActivityModel {
  const factory ActivityModel({
    required String id,
    required String title,
    required String sport,
    required double latitude,
    required double longitude,
    @JsonKey(name: 'scheduled_at') required int scheduledAt,
    @JsonKey(name: 'max_participants') required int maxParticipants,
    @JsonKey(name: 'current_participants') required int currentParticipants,
    @JsonKey(name: 'organizer_id') required String organizerId,
  }) = _ActivityModel;  

  factory ActivityModel.fromJson(Map<String, dynamic> json) => _$ActivityModelFromJson(json);

}