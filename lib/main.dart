import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/screens/tasks_screens.dart';
import 'package:todoey/models/taskdata.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(

      create: (context)=>Taskdata(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
