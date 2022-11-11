import 'package:flutter/material.dart';

import '../model/todo_model.dart';

class TodoProvider with ChangeNotifier {
  List todo = [];
  List get newTodo => todo;
  addtodo(title, todolist) {
    todo.add(TodoModel(title: title, todo: todolist));
    notifyListeners();
  }
}
