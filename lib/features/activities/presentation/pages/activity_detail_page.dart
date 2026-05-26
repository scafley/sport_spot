import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_spot/features/activities/presentation/bloc/activities_bloc.dart';
import 'package:sport_spot/features/activities/presentation/bloc/activities_event.dart';
import 'package:sport_spot/features/activities/presentation/bloc/activities_state.dart';

@RoutePage()
class ActivityDetailPage extends StatelessWidget {
  final String activityId;

  const ActivityDetailPage({
    super.key,
    @PathParam('id') required this.activityId,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Szczegóły'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: BlocBuilder<ActivitiesBloc, ActivitiesState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (activities) {
              final activity = activities.firstWhere(
                (a) => a.id == activityId,
                orElse: () => throw Exception('Activity not found'),
              );
              return Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      activity.title,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text('Sport: ${activity.sport}'),
                    Text(
                      'Uczestnicy: ${activity.currentParticipants}/${activity.maxParticipants}',
                    ),
                    Text(
                      'Lat: ${activity.latitude}, Lng: ${activity.longitude}',
                    ),
                    const SizedBox(height: 24),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      onPressed: () {
                        context.read<ActivitiesBloc>().add(
                          ActivitiesEvent.joinActivity(activityId),
                        );
                        context.maybePop();
                      },
                      child: const Text(
                        'Dołącz',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              );
            },
            error: (message) => Center(child: Text('Błąd: $message')),
          );
        },
      ),
    );
  }
}
