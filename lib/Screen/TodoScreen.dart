import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_flutter/Bloc/Todo/TodoBloc.dart';
import 'package:learn_flutter/Bloc/Todo/TodoState.dart';

class TodoScreen extends StatelessWidget {
  TodoBloc _todoBloc;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('USER LIST'),
      ),
      // body: BlocBuilder<TodoBloc, TodoState>(
      //   builder: (context, count) {
      //     return Center(
      //       child: Text('$count'),
      //     );
      //   },
      // ),
      // body: BlocBuilder<TodoBloc, TodoState>(
      //   bloc: BlocProvider.of<TodoBloc>(context),
      // ),
    );
  }
}
