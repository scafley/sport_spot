import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:sport_spot/features/activities/domain/usecases/add_activity_usecase.dart';
import 'package:sport_spot/features/activities/domain/usecases/get_activities_usecase.dart';
import 'package:sport_spot/features/activities/domain/usecases/join_activity_usecase.dart';
import 'package:sport_spot/features/activities/presentation/bloc/activities_event.dart';
import 'package:sport_spot/features/activities/presentation/bloc/activities_state.dart';

@injectable
class ActivitiesBloc extends Bloc<ActivitiesEvent, ActivitiesState> {
  final GetActivitiesUsecase _getActivitiesUseCase;
  final JoinActivityUsecase _joinActivityUseCase;
  final AddActivityUsecase _addActivityUseCase;

  ActivitiesBloc(
    this._getActivitiesUseCase,
    this._joinActivityUseCase,
    this._addActivityUseCase,
  ) : super(const ActivitiesState.initial()) {
    on<LoadActivities>(_onLoadActivities);
    on<AddActivity>(_onAddActivity);
    on<JoinActivity>(_onJoinActivity);
  }

  Future<void> _onLoadActivities(
    LoadActivities event,
    Emitter<ActivitiesState> emit,
  ) async {
    emit(const ActivitiesState.loading());
    try {
      final activities = await _getActivitiesUseCase();
      log('Zaladowano aktywnosci: ${activities.length}');
      emit(ActivitiesState.loaded(activities));
    } catch (e) {
      log('Blad: $e');
      emit(ActivitiesState.error(e.toString()));
    }
  }

  Future<void> _onAddActivity(
    AddActivity event,
    Emitter<ActivitiesState> emit,
  ) async {
    emit(const ActivitiesState.loading());
    try {
      await _addActivityUseCase(event.activity);
      final activities = await _getActivitiesUseCase();
      emit(ActivitiesState.loaded(activities));
    } catch (e) {
      emit(ActivitiesState.error(e.toString()));
    }
  }

  Future<void> _onJoinActivity(
    JoinActivity event,
    Emitter<ActivitiesState> emit,
  ) async {
    emit(const ActivitiesState.loading());
    try {
      await _joinActivityUseCase(event.id);
      final activities = await _getActivitiesUseCase();
      emit(ActivitiesState.loaded(activities));
    } catch (e) {
      emit(ActivitiesState.error(e.toString()));
    }
  }
}
