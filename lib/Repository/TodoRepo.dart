import 'dart:convert';

import 'package:http/http.dart';
import 'package:learn_flutter/Models/Todo.dart';

class TodoRepo {
  final String todoURL = "https://jsonplaceholder.typicode.com/posts";
  Future<List<Todo>> getTodos() async {
    Response res = await get(todoURL);
    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      List<Todo> posts = body
          .map(
            (dynamic item) => Todo.fromJson(item),
          )
          .toList();

      return posts;
    }
  }
}
