import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_spot/core/router/app_router.dart';
import 'package:sport_spot/features/activities/presentation/bloc/activities_bloc.dart';
import 'package:sport_spot/features/activities/presentation/bloc/activities_state.dart';

@RoutePage()
class ActivitiesListPage extends StatelessWidget {
  const ActivitiesListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista aktywności'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: BlocBuilder<ActivitiesBloc, ActivitiesState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (activities) => ListView.builder(
              itemCount: activities.length,
              itemBuilder: (context, index) {
                final activity = activities[index];
                return ListTile(
                  leading: const Icon(Icons.sports, color: Colors.green),
                  title: Text(activity.title),
                  subtitle: Text(activity.sport),
                  trailing: Text(
                    '${activity.currentParticipants}/${activity.maxParticipants}',
                  ),
                  onTap: () => context.pushRoute(
                    ActivityDetailRoute(activityId: activity.id),
                  ),
                );
              },
            ),
            error: (message) => Center(child: Text('Błąd: $message')),
          );
        },
      ),
    );
  }
}
