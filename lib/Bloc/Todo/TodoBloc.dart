import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:learn_flutter/Bloc/Todo/Todo.dart';
import 'package:learn_flutter/Models/Todo.dart';
import 'package:learn_flutter/Repository/TodoRepo.dart';

class TodoBloc extends Bloc<TodoEvents, TodoState> {
  final TodoRepo _todoRepo = TodoRepo();

  @override
  TodoState get initialState => TodoInitialized();

  @override
  Stream<TodoState> mapEventToState(TodoEvents event) async* {
    if (event is FetchTodo) {
      yield* _mapFetchTodosToState();
    }
  }

  Stream<TodoState> _mapFetchTodosToState() async* {
    try {
      List<Todo> todos = await _todoRepo.getTodos();
      yield TodoLoaded(todos);
    } catch (_) {
      yield TodoNotLoaded();
    }
  }
}
