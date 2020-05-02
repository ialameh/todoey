import 'package:flutter/material.dart';

import 'task_check_box.dart';

class ListLine extends StatefulWidget {
  final String taskString;
  final bool isCheckedAsReceived;
  ListLine(this.taskString, this.isCheckedAsReceived);
  
  @override
  _ListLineState createState() => _ListLineState();
}

class _ListLineState extends State<ListLine> {
  Function isChecked;
  bool checkStatus;
  String taskString;

  @override
  void initState() { 
    super.initState();
    checkStatus = widget.isCheckedAsReceived;
  }
  
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.taskString,
        style: TextStyle(
          decoration: checkStatus ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckBox(
          checkStatus: checkStatus,
          isChecked: (bool value) {
            setState(() {
              checkStatus = value;
            });
          }),
    );
  }
}