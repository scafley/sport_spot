import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sport_spot/features/activities/domain/entities/activity.dart';
import 'package:sport_spot/features/activities/presentation/bloc/activities_bloc.dart';
import 'package:sport_spot/features/activities/presentation/bloc/activities_event.dart';
import 'package:uuid/uuid.dart';

@RoutePage()
class AddActivityPage extends HookWidget {
  const AddActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    final titleController = useTextEditingController();
    final sportController = useTextEditingController();
    final latController = useTextEditingController();
    final lngController = useTextEditingController();
    final maxParticipantsController = useTextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dodaj aktywność'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(labelText: 'Nazwa'),
            ),
            TextField(
              controller: sportController,
              decoration: const InputDecoration(labelText: 'Sport'),
            ),
            TextField(
              controller: latController,
              decoration: const InputDecoration(
                labelText: 'Szerokość geograficzna',
              ),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: lngController,
              decoration: const InputDecoration(
                labelText: 'Długość geograficzna',
              ),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: maxParticipantsController,
              decoration: const InputDecoration(labelText: 'Max uczestników'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              onPressed: () {
                final activity = Activity(
                  id: const Uuid().v4(),
                  title: titleController.text,
                  sport: sportController.text,
                  latitude: double.tryParse(latController.text) ?? 0,
                  longitude: double.tryParse(lngController.text) ?? 0,
                  scheduledAt: DateTime.now().millisecondsSinceEpoch,
                  maxParticipants:
                      int.tryParse(maxParticipantsController.text) ?? 0,
                  currentParticipants: 0,
                  organizerId: 'user_1',
                );
                context.read<ActivitiesBloc>().add(
                  ActivitiesEvent.addActivity(activity),
                );
                context.maybePop();
              },
              child: const Text('Dodaj', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
