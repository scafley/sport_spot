import 'package:flutter/material.dart';
import 'package:sport_spot/core/di/injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const SportSpotApp());
}

class SportSpotApp extends StatelessWidget {
  const SportSpotApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SportSpot',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: Center(
          child: Text('SportSpot'),
        ),
      ),
    );
  }
}