import 'package:flutter/material.dart';

class Task {
  
 // Map<UniqueKey,dynamic> taskData;
  
  UniqueKey taskID;
  String task;
  bool  isChecked;
 // dynamic taskInfo = {'task': task, 'isChecled': isChecked};
  Task(this.taskID, {@required this.task, @required this.isChecked});
}