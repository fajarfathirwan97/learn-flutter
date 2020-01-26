import 'package:learn_flutter/Models/Todo.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

@immutable
abstract class TodoState extends Equatable {
  TodoState([List props = const []]) : super(props);
}

class TodoInitialized extends TodoState {
  @override
  String toString() => 'TodoInitialized';
}

class TodoLoading extends TodoState {
  @override
  String toString() => 'TodoLoading';
}

class TodoLoaded extends TodoState {
  final List<Todo> todos;
  TodoLoaded(this.todos) : super([todos]);
  @override
  String toString() => 'TodoLoaded';
}

class TodoNotLoaded extends TodoState {}
