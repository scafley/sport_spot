// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [ActivitiesListPage]
class ActivitiesListRoute extends PageRouteInfo<void> {
  const ActivitiesListRoute({List<PageRouteInfo>? children})
    : super(ActivitiesListRoute.name, initialChildren: children);

  static const String name = 'ActivitiesListRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ActivitiesListPage();
    },
  );
}

/// generated route for
/// [ActivitiesMapPage]
class ActivitiesMapRoute extends PageRouteInfo<void> {
  const ActivitiesMapRoute({List<PageRouteInfo>? children})
    : super(ActivitiesMapRoute.name, initialChildren: children);

  static const String name = 'ActivitiesMapRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ActivitiesMapPage();
    },
  );
}

/// generated route for
/// [ActivityDetailPage]
class ActivityDetailRoute extends PageRouteInfo<ActivityDetailRouteArgs> {
  ActivityDetailRoute({
    Key? key,
    required String activityId,
    List<PageRouteInfo>? children,
  }) : super(
         ActivityDetailRoute.name,
         args: ActivityDetailRouteArgs(key: key, activityId: activityId),
         rawPathParams: {'id': activityId},
         initialChildren: children,
       );

  static const String name = 'ActivityDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<ActivityDetailRouteArgs>(
        orElse: () =>
            ActivityDetailRouteArgs(activityId: pathParams.getString('id')),
      );
      return ActivityDetailPage(key: args.key, activityId: args.activityId);
    },
  );
}

class ActivityDetailRouteArgs {
  const ActivityDetailRouteArgs({this.key, required this.activityId});

  final Key? key;

  final String activityId;

  @override
  String toString() {
    return 'ActivityDetailRouteArgs{key: $key, activityId: $activityId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ActivityDetailRouteArgs) return false;
    return key == other.key && activityId == other.activityId;
  }

  @override
  int get hashCode => key.hashCode ^ activityId.hashCode;
}

/// generated route for
/// [AddActivityPage]
class AddActivityRoute extends PageRouteInfo<void> {
  const AddActivityRoute({List<PageRouteInfo>? children})
    : super(AddActivityRoute.name, initialChildren: children);

  static const String name = 'AddActivityRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AddActivityPage();
    },
  );
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
    : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MainPage();
    },
  );
}
