import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/models/todo.dart';

class TodoCubit extends Cubit<List<Todo>> {
  TodoCubit() : super([]);
  void addTodo(String name) {
    if (name.isEmpty) {
      addError('title is empty.');
      return;
    }
    final todo = Todo(name: name, createdAt: DateTime.now());
    emit([todo, ...state]);
  }

  @override
  void onChange(Change<List<Todo>> change) {
    // TODO: implement onChange
    super.onChange(change);
    debugPrint('Todo- $change');
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    // TODO: implement onError
    super.onError(error, stackTrace);
    debugPrint('Todo- $error');
  }
}
