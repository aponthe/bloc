import 'package:bloc/bloc.dart';
// import 'package:flutter/material.dart';

enum CounterEvents { increment, decrement, reset }

class CounterBloc extends Bloc<CounterEvents, int> {
  // @override
  // int get initialState =>100;

  CounterBloc(int initialState) : super(initialState);

  @override
  Stream<int> mapEventToState(CounterEvents event) async* {
    switch (event) {
      case CounterEvents.increment:
        yield this.state+1;
        break;
      case CounterEvents.decrement:
        yield this.state-1;
        break;
      default:
        yield 300;
        break;
    }
  }
}
