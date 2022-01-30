import 'package:flutter/material.dart';
import 'package:todoey/Widgets/taskslist.dart';
import 'package:todoey/models/taskdata.dart';
import 'package:todoey/screens/Addnewtask.dart';
import 'package:todoey/models/tasks.dart';
import 'package:provider/provider.dart';


class TasksScreen extends StatelessWidget {





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(context: context, builder: (contex){
            return AddNewTask();

            });
          },

        backgroundColor: Colors.lightBlueAccent,
        child: Icon(
          Icons.add,
          size: 30.0,
        ),
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 30,top: 60,right: 30,bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
children: [
  CircleAvatar(
backgroundColor: Colors.white,
    radius: 30.0,
    child: Icon(Icons.list,
    color: Colors.lightBlueAccent,
    size: 30,),
  ),
  SizedBox(height: 20),
  Text(
    'ToDo',
    style: TextStyle(
          color: Colors.white,
fontSize: 50.0,
          fontWeight: FontWeight.w700
    ),
  ),
  Text(
    '${Provider.of<Taskdata>(context).taskslength} Tasks',
    style: TextStyle(
          color: Colors.white,
fontSize: 20.0,
    ),
  ),
],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight:Radius.circular(25)),
              ),
              child: TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}



