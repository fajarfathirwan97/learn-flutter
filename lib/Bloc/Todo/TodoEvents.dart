import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

@immutable
abstract class TodoEvents extends Equatable {
  TodoEvents([List props = const []]) : super(props);
}

class FetchTodo extends TodoEvents {
  final int id;
  final int userId;
  final String title;
  final int body;
  FetchTodo(this.id, this.userId, this.title, this.body)
      : super([id, userId, title, body]);
}

class UpdateTodo extends TodoEvents {
  final int id;
  final int userId;
  final String title;
  final int body;
  UpdateTodo(this.id, this.userId, this.title, this.body)
      : super([id, userId, title, body]);
}


class DeleteTodo extends TodoEvents {
  final int id;
  final int userId;
  final String title;
  final int body;
  DeleteTodo(this.id, this.userId, this.title, this.body)
      : super([id, userId, title, body]);
}
