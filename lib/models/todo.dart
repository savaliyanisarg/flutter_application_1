// To parse this JSON data, do
//
//     final todoList = todoListFromJson(jsonString);

import 'dart:convert';

List<TodoList> todoListFromJson(String str) => List<TodoList>.from(json.decode(str).map((x) => TodoList.fromJson(x)));

String todoListToJson(List<TodoList> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TodoList {
    int? id;
    String? task;
    bool? completed;

    TodoList({
        this.id,
        this.task,
        this.completed,
    });

    factory TodoList.fromJson(Map<String, dynamic> json) => TodoList(
        id: json["id"],
        task: json["task"],
        completed: json["completed"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "task": task,
        "completed": completed,
    };
}
