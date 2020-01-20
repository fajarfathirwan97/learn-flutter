import 'package:learn_flutter/Models/Todo.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

@immutable
abstract class TodoState extends Equatable {
  TodoState([List props = const []]) : super(props);
}

class TodoInitialized extends TodoState {}

class TodoLoading extends TodoState {}

class TodoLoaded extends TodoState {
  final List<Todo> todos;
  TodoLoaded(this.todos) : super([todos]);
}

class TodoNotLoaded extends TodoState {}
