import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:sport_spot/features/activities/presentation/pages/activities_map_page.dart';
import 'package:sport_spot/features/activities/presentation/pages/activities_list_page.dart';
import 'package:sport_spot/features/activities/presentation/pages/add_activity_page.dart';
import 'package:sport_spot/features/activities/presentation/pages/activity_detail_page.dart';
import 'package:sport_spot/features/activities/presentation/pages/main_page.dart';

import 'package:flutter/material.dart';
part 'app_router.gr.dart';

@lazySingleton
@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: MainRoute.page,
      initial: true,
      children: [
        AutoRoute(page: ActivitiesMapRoute.page, initial: true),
        AutoRoute(page: ActivitiesListRoute.page),
      ],
    ),
    AutoRoute(page: AddActivityRoute.page),
    AutoRoute(page: ActivityDetailRoute.page),
  ];
}
