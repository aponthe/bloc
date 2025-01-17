import 'package:bloc_example/blocs/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterLabel extends StatelessWidget {
  const CounterLabel({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider.of<CounterBloc>(context);
    return Container(
      width: double.infinity,
      color: Colors.grey,
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          BlocBuilder<CounterBloc,int>(builder: (_,state){
            return Text(
            'child $state',
            textAlign: TextAlign.center,
          );
          }),
          FlatButton(
              color: Colors.redAccent,
              onPressed: () {
                counterBloc.add(CounterEvents.reset);
              },
              child: Text('reset'))
        ],
      ),
    );
  }
}
