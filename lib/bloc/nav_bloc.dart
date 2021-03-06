import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'nav_event.dart';
part 'nav_state.dart';

class MyBloc extends Bloc<MyEvent, MyState> {
  MyBloc() : super(StateA());

  @override
  Stream<MyState> mapEventToState(
    MyEvent event,
  ) async* {
    switch (event) {
      case MyEvent.eventA:
        yield StateA();
        break;
      case MyEvent.eventB:
        yield StateB();
        break;
      case MyEvent.Timer:
        yield StateTimer();
        break;
      case MyEvent.Rockets:
        yield StateRockets();
        break;
    }
  }
}
