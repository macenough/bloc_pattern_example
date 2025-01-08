import 'package:bloc/bloc.dart';

import 'counter_event.dart';
import 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState()) {
    on<IncrementCounter>((event, emit) {
      emit(state.copyWith(counter: state.counter + 1));
    });
    on<DecrementCounter>((event, emit) {
      if (state.counter > 0) {
        emit(state.copyWith(counter: state.counter - 1));
      }
    });
  }
}
