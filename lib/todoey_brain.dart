import 'package:flutter/material.dart';
import 'package:todoey/tasks.dart';

class TodoeyBrain {
  List<Task> tasks = [];

  void addTask(String task) {
    tasks.add(new Task(UniqueKey(), isChecked: false, task: task));
  }
  
  }
  