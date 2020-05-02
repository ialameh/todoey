import 'package:flutter/material.dart';
import 'package:todoey/todoey_brain.dart';

import 'list_line.dart';

class TaskList extends StatelessWidget {
  final TodoeyBrain brain;
  TaskList(this.brain);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: brain.tasks.length,
      itemBuilder: (BuildContext context, int index) {
        return ListLine(brain.tasks[index].task, brain.tasks[index].isChecked);
      }
      // children: 
      //  for  (final e in brain.tasks) {
      //     ListLine(e.task, e.isChecked),
      //  }
    );
  }
}
