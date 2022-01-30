import 'dart:collection';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'tasks.dart';
class Taskdata extends ChangeNotifier{
  List<Task> _tasks=[
    Task(name: 'buy milk'),
    Task(name: 'buy eggs'),
    Task(name: 'buy bread'),

  ];
  UnmodifiableListView<Task> get tasks{
    return  UnmodifiableListView(_tasks);
  }

  int get taskslength{
    return _tasks.length;
  }

  void addtask(String newtasktitle){
    final task=Task(name: newtasktitle);
    _tasks.add(task);
    notifyListeners();

  }
  void updatetask(Task task){
   task.toggledone();
   notifyListeners();
  }
  void deletetask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }

}
