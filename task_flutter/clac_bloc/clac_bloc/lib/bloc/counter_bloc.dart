import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int COUNTER=0;
  CounterBloc() : super(CounterInitial()) {
    on<CounterEvent>((event, emit) {
     if(event is IncrementEvent)
     {
      COUNTER++;
      emit(CounterValueChanged(counter: COUNTER));
     }
     else if(event is DEcrementEvent )
     {
      COUNTER--;
      emit(CounterValueChanged(counter: COUNTER));
     }
     else {
      COUNTER=0;
      emit(CounterValueChanged(counter: COUNTER));
     }
    });
  }
}
