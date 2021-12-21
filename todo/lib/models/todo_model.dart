// To parse this JSON data, do
//
//     final Todo = TodoFromJson(jsonString);

import 'dart:convert';

Todo todoFromJson(String str) => Todo.fromJson(json.decode(str));

String todoToJson(Todo data) => json.encode(data.toJson());

class Todo {
  Todo({
    this.message,
    this.data,
  });

  String? message;
  List<Datum>? data;

  factory Todo.fromJson(Map<String, dynamic> json) => Todo(
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    this.id,
    this.todoTitle,
    this.category,
    this.v,
  });

  String? id;
  String? todoTitle;
  String? category;
  int? v;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["_id"],
        todoTitle: json["todoTitle"],
        category: json["category"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "todoTitle": todoTitle,
        "category": category,
        "__v": v,
      };
}
