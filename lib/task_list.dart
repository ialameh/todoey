import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/todoey_brain.dart';

import 'list_line.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TodoeyBrain>(builder: (context, brain, child) {
      return ListView.builder(
          itemCount: brain.tasks.length,
          itemBuilder: (BuildContext context, int index) {
            return ListLine(
                brain.tasks[index].task, brain.tasks[index].isChecked);
          });
    });
  }
}
