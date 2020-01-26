import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_flutter/Bloc/CounterBloc.dart';
import 'package:learn_flutter/Bloc/Todo/Todo.dart';
import 'package:learn_flutter/Screen/HomeScreen.dart';
import 'package:learn_flutter/Screen/TodoScreen.dart';
import 'package:learn_flutter/Screen/UserScreen.dart';

class MainBlocDelegate extends BlocDelegate {
  @override
  void onError(Bloc bloc, Object error, StackTrace stacktrace) {
    // TODO: implement onError
    super.onError(bloc, error, stacktrace);
  }

  @override
  void onEvent(Bloc bloc, Object event) {
    // TODO: implement onEvent
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    // TODO: implement onTransition
    super.onTransition(bloc, transition);
  }
}

void main() {
  BlocSupervisor.delegate = MainBlocDelegate();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<CounterBloc>(
            builder: (context) => CounterBloc(),
          ),
          BlocProvider<TodoBloc>(
            builder: (context) => TodoBloc(),
          )
        ],
        child: MaterialApp(
            title: "L",
            theme: ThemeData(primarySwatch: Colors.red),
            initialRoute: '/',
            routes: {
              '/': (context) => HomeScreen(),
              '/todo': (context) => TodoScreen(),
            }));
  }
}
