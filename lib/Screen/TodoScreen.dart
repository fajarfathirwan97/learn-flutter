import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_flutter/Bloc/Todo/Todo.dart';
import 'package:learn_flutter/Bloc/Todo/TodoBloc.dart';
import 'package:learn_flutter/Bloc/Todo/TodoState.dart';

class TodoScreen extends StatefulWidget {
  final void Function() onInit;
  const TodoScreen({Key key, @required this.onInit}) : super(key: key);
  @override
  _TodoScreenState createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  TodoBloc _todoBloc;
  @override
  void initState() {
    // widget.onInit();
    super.initState();
    _todoBloc = BlocProvider.of<TodoBloc>(context);
    _todoBloc..dispatch(FetchTodo());
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Todo List'),
        ),
        body: BlocBuilder<TodoBloc, TodoState>(
          builder: (context, todoState) {
            if (todoState is TodoInitialized) {
              return Center(
                child: Text('$todoState'),
              );
            } else if (todoState is TodoLoaded) {
              return ListView.builder(
                itemCount: todoState.todos.length,
                itemBuilder: (BuildContext context, int index) {
                  var todo = todoState.todos[index];
                  return Card(
                    child: Container(
                      padding: EdgeInsets.all(12),
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(todo.title),
                            ),
                            padding: EdgeInsets.only(bottom: 5),
                          ),
                          Container(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(todo.body),
                            ),
                            padding: EdgeInsets.only(bottom: 5),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            }
          },
        ));
  }

  @override
  void dispose() {
    super.dispose();
  }
}
