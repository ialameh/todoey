import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'task_screen.dart';
import 'todoey_brain.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
          create: (context) => TodoeyBrain(),
          child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}

