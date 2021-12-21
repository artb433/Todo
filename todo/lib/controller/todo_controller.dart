import 'dart:convert';

import 'package:todo/models/todo_model.dart';
import 'package:todo/services/todo_service.dart';

class TodoController {
  final TodoService _todoService = TodoService();
//get all todos
  Future<Todo?> getAllTodos() async {
    Todo? _todo;
    await _todoService.getAllTodoRequest().then((response) {
      int statusCode = response.statusCode;
      if (statusCode == 200) {
        //success
        _todo = Todo.fromJson(json.decode(response.body));
        // ignore: avoid_print
        print(_todo!.data.toString());
      } else {
        //error
        _todo = null;
      }
    }).catchError((onError) {
      _todo = null;
    });
    return _todo;
  }

//get all todos
  Future<Todo?> getAllCategoryTodos(String category) async {
    Todo? _todo;
    await _todoService.getTodoByCategoryRequest(category).then((response) {
      int statusCode = response.statusCode;
      if (statusCode == 200) {
        //success
        _todo = Todo.fromJson(json.decode(response.body));
      } else {
        //error
        _todo = null;
      }
    }).catchError((onError) {
      _todo = null;
    });
    return _todo;
  }

//create a new todo
  Future<bool> createTodo(
      {required String todoTitle, required String category}) async {
    bool isSuccessful = false;
    await _todoService
        .createTodoRequest(todoTitle: todoTitle, category: category)
        .then((response) {
      int statusCode = response.statusCode;
      if (statusCode == 200) {
        isSuccessful = true;
      } else {
        isSuccessful = false;
      }
    }).catchError((onError) {
      isSuccessful = false;
    });
    return isSuccessful;
  }

  //delete a todo
  Future<bool> deleteTodo(String id) async {
    bool isDeleted = false;

    await _todoService.deleteTodoRequest(id).then((response) {
      int statusCode = response.statusCode;
      if (statusCode == 200) {
        //delete success
        isDeleted = true;
      } else {
        // delete error
        isDeleted = false;
      }
    }).catchError((onError) {
      isDeleted = false;
    });

    return isDeleted;
  }
}







