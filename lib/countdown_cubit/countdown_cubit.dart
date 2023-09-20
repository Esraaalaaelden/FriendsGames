import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

class CountdownCubit extends Cubit<int> {
  CountdownCubit(int initialState) : super(initialState);

  void startCountdown(int seconds) {
    var countdown = seconds;
    emit(countdown);

    final countdownTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (countdown > 0) {
        countdown--;
        emit(countdown);
      } else {
        timer.cancel();
      }
    });
  }
}
