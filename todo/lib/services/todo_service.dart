import 'dart:convert';
import 'package:http/http.dart';

class TodoService {
  Future<Response> getAllTodoRequest() async {
    return await get(Uri.parse("https://artb-todo-app.herokuapp.com/todos"));
  }

  //todos by category
  Future<Response> getTodoByCategoryRequest(String category) async {
    return await get(
        Uri.parse("https://artb-todo-app.herokuapp.com/todos/$category"));
  }

  //create a new category
}
