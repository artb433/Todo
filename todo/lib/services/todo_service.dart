import 'dart:convert';

import 'package:http/http.dart';

class TodoService {
//get all todos
  Future<Response> getAllTodoRequest() async {
    return await get(Uri.parse("https://artb-todo-app.herokuapp.com/todos"));
  }

// get all todos by category
  Future<Response> getTodoByCategoryRequest(String category) async {
    return await get(
        Uri.parse("http://artb-todo-app.herokuapp.com/todos/$category"));
  }

//create a new todo
  Future<Response> createTodoRequest(
      {required String todoTitle, required String category}) async {
    Map<String, String> body = {"todoTitle": todoTitle, "category": category};

    Map<String, String> header = {'Content-Type': 'application/json'};

    return await post(Uri.parse("http://artb-todo-app.herokuapp.com/todo"),
        body: jsonEncode(body), headers: header);
  }

  //delete a todo
  Future<Response> deleteTodoRequest(String id) async {
    return await delete(
        Uri.parse("http://artb-todo-app.herokuapp.com/todo/$id"));
  }
}
