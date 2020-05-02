import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/todoey_brain.dart';

class AddTaskScreen extends StatelessWidget {
  
    @override
  Widget build(BuildContext context) {
  String taskText;
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
            onChanged: (value) {
              taskText = value;
            },
          ),
          FlatButton(
            color: Colors.lightBlueAccent,
            child: Text('Add', style: TextStyle(fontSize: 18.0)),
            onPressed: ()   {
              Provider.of<TodoeyBrain>(context, listen: false).addTask(taskText);

              Navigator.pop(context);
            },
          ),
        ]),
      ),
    );
  }
}
