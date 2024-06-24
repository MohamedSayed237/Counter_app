import 'package:basketball_counter_app/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterIncreamentState> {
  CounterCubit() : super(CounterAIncreamentState());

  int teamAPoint = 0;
  int teamBPoint = 0;

  void PointsIncreament({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamAPoint += buttonNumber;
      emit(CounterAIncreamentState());
    } else if (team == 'B') {
      teamBPoint += buttonNumber;
      emit(CounterBIncreamentState());
    }
  }

  void ResetPoints() {
    teamAPoint = 0;
    teamBPoint = 0;
    emit(CounterReset());
  }
}
