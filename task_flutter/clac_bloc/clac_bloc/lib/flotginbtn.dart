import 'dart:js';

import 'package:clac_bloc/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class button extends StatelessWidget {
  const button({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(onPressed: () {
          BlocProvider.of<CounterBloc>(context).add(IncrementEvent());
        },
        child:const Icon(Icons.add) ,
        ),
         FloatingActionButton(onPressed: () {
         context.read<CounterBloc>().add(ResttEvent());
         },
        child:const Icon(Icons.exposure_zero) ,
        ),
         FloatingActionButton(onPressed: () {
          BlocProvider.of<CounterBloc>(context).add(DEcrementEvent());
         },
        child:const Icon(Icons.remove) ,
        )
      ],
    );
  }
}