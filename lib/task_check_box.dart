import 'package:flutter/material.dart';

class TaskCheckBox extends StatelessWidget {
  const TaskCheckBox({
    @required this.checkStatus,
    @required this.isChecked,
  });

  final bool checkStatus;
  final Function isChecked;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
        value: checkStatus,
        onChanged: (value) {
          isChecked(value);
        });
  }
}