import 'package:flutter/material.dart';
import 'package:todoey/models/taskdata.dart';
import 'tasktile.dart';
import 'package:todoey/models/tasks.dart';
import 'package:todoey/screens/tasks_screens.dart';
import 'package:provider/provider.dart';



class TasksList extends StatelessWidget {






  @override
  Widget build(BuildContext context) {
    return Consumer<Taskdata>(
      builder: (context,taskData,child){
        return  ListView.builder(itemBuilder:(contex,index){
          final task=taskData.tasks[index];
          return tasktile(

            ischecked: task.isdone,
            tasktitle:task.name,
            textboxcallback: (callback){
             taskData.updatetask(task);
            },
            deletetask: (){
              taskData.deletetask(task);
            },


          );


        },itemCount: Provider.of<Taskdata>(context).taskslength,

        );
      },

    );
  }
}
