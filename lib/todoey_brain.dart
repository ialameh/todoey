import 'package:flutter/material.dart';
import 'package:todoey/tasks.dart';


class TodoeyBrain extends ChangeNotifier{
  String taskText;
  final List<Task> tasks = [];

  void addTask(String taskText) {
    tasks.add(new Task(UniqueKey(), isChecked: false, task: taskText));
    notifyListeners();
  }
  


}
