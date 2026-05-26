import 'package:equatable/equatable.dart';

class Activity extends Equatable {
  final String id;
  final String title;
  final String sport;
  final double latitude;
  final double longitude;
  final int scheduledAt;
  final int maxParticipants;
  final int currentParticipants;
  final String organizerId;

  const Activity({
    required this.id,
    required this.title,
    required this.sport,
    required this.latitude,
    required this.longitude,
    required this.scheduledAt,
    required this.maxParticipants,
    required this.currentParticipants,
    required this.organizerId,
  });

  @override
  List<Object?> get props => [
    id,
    title,
    sport,
    latitude,
    longitude,
    scheduledAt,
    maxParticipants,
    currentParticipants,
    organizerId,
  ];
}
