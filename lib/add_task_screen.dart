import 'dart:ui';

import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTheTask;
  final Function setTaskString;
  final TextEditingController _controller = new TextEditingController();

  String taskData;

  AddTaskScreen({this.addTheTask, this.setTaskString});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Column(children: [
          Text(
            'Add Task',
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w900),
          ),
          TextField(
            autofocus: true,
            decoration: InputDecoration(
              hintText: 'Input Task Here',
            ),
            controller: _controller,
            onChanged: (value) {
              taskData = value;
            },
          ),
          FlatButton(
            color: Colors.lightBlueAccent,
            child: Text('Add', style: TextStyle(fontSize: 18.0)),
            onPressed: () async {
              await addTheTask(taskData);
              _controller.clear();
              Navigator.pop(context);
            },
          ),
        ]),
      ),
    );
  }
}
