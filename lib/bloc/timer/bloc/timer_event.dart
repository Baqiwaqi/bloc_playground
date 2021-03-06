part of 'timer_bloc.dart';

abstract class TimerEvent extends Equatable {
  const TimerEvent();

  @override
  List<Object> get props => [];
}

class TimerStarted extends TimerEvent {
  const TimerStarted({@required this.duration});

  final int duration;
}

class TimerPaused extends TimerEvent {}

class TimerResumed extends TimerEvent {}

class TimerReset extends TimerEvent {}

class TimerTicked extends TimerEvent {
  const TimerTicked({@required this.duration});

  final int duration;

  @override
  List<Object> get props => [duration];

  @override
  String toString() => "TimerTicker {durattion $duration}";
}
