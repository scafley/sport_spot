// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ActivityModel _$ActivityModelFromJson(Map<String, dynamic> json) =>
    _ActivityModel(
      id: json['id'] as String,
      title: json['title'] as String,
      sport: json['sport'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      scheduledAt: (json['scheduled_at'] as num).toInt(),
      maxParticipants: (json['max_participants'] as num).toInt(),
      currentParticipants: (json['current_participants'] as num).toInt(),
      organizerId: json['organizer_id'] as String,
    );

Map<String, dynamic> _$ActivityModelToJson(_ActivityModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'sport': instance.sport,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'scheduled_at': instance.scheduledAt,
      'max_participants': instance.maxParticipants,
      'current_participants': instance.currentParticipants,
      'organizer_id': instance.organizerId,
    };
