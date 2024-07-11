part of 'counter_bloc.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {}

class CounterValueChanged extends CounterState{
  final int counter;

  CounterValueChanged({required this.counter});
}
