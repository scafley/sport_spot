import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_spot/core/di/injection.dart';
import 'package:sport_spot/core/router/app_router.dart';
import 'package:sport_spot/features/activities/presentation/bloc/activities_bloc.dart';
import 'package:sport_spot/features/activities/presentation/bloc/activities_event.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(SportSpotApp());
}

class SportSpotApp extends StatelessWidget {
  final _router = getIt<AppRouter>();
  SportSpotApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          getIt<ActivitiesBloc>()..add(const ActivitiesEvent.loadActivities()),
      child: MaterialApp.router(
        title: 'SportSpot',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
          useMaterial3: true,
        ),

        routerConfig: _router.config(),
      ),
    );
  }
}
