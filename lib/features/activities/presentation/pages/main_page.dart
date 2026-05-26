import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sport_spot/core/router/app_router.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [ActivitiesMapRoute(), ActivitiesListRoute()],
      bottomNavigationBuilder: (context, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          selectedItemColor: Colors.green,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Mapa'),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Lista'),
          ],
        );
      },
    );
  }
}
