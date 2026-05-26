import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:sport_spot/core/router/app_router.dart';
import 'package:sport_spot/features/activities/presentation/bloc/activities_bloc.dart';
import 'package:sport_spot/features/activities/presentation/bloc/activities_state.dart';

@RoutePage()
class ActivitiesMapPage extends StatelessWidget {
  const ActivitiesMapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SportSpot'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: BlocBuilder<ActivitiesBloc, ActivitiesState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: Text('Ładowanie...')),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (activities) => FlutterMap(
              options: const MapOptions(
                initialCenter: LatLng(50.0614, 19.9366),
                initialZoom: 13,
              ),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  userAgentPackageName: 'com.example.sport_spot',
                ),
                MarkerLayer(
                  markers: activities
                      .map(
                        (activity) => Marker(
                          point: LatLng(activity.latitude, activity.longitude),
                          width: 40,
                          height: 40,
                          child: GestureDetector(
                            onTap: () {
                              context.pushRoute(
                                ActivityDetailRoute(activityId: activity.id),
                              );
                            },
                            child: const Icon(
                              Icons.sports,
                              color: Colors.green,
                              size: 40,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
            error: (message) => Center(child: Text('Błąd: $message')),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pushRoute(const AddActivityRoute());
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
