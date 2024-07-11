part of 'counter_bloc.dart';

@immutable
sealed class CounterEvent {}
class IncrementEvent extends CounterEvent{}
class DEcrementEvent extends CounterEvent{}
class ResttEvent extends CounterEvent{}