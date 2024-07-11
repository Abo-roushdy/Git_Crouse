import 'package:clac_bloc/bloc/counter_bloc.dart';
import 'package:clac_bloc/flotginbtn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class home extends StatelessWidget {
  const home
({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: button(), 
      appBar: AppBar(
        title: Center(child: Text("counter")),
      ),
      body:  Column(
       mainAxisAlignment: MainAxisAlignment.center  ,
        children: [
          Center(child: Text("counter value is : ")),
          BlocBuilder<CounterBloc,CounterState>(builder: (context, state) {
            if(state is CounterInitial)
            {
              return Text("0");
            }
            else if(state is CounterValueChanged)
            {
              return Text("${state.counter}");
            }
            else{
              return SizedBox();
            }
          },)
         
        ],
      ),
    );
  }
}