import 'package:flutter/material.dart';
import 'package:todoey/models/taskdata.dart';
import 'package:provider/provider.dart';

class AddNewTask extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    late String newtasktitle;
    return Container(
      color: Color(0xff757575),
      child: Container(
      decoration: BoxDecoration(
          color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25),
          topLeft: Radius.circular(25),
        )
      ),
        child: Padding(
          padding: const EdgeInsets.only(top: 50,right: 40,left: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightBlueAccent,
           fontSize: 30,
           fontWeight: FontWeight.bold
                ),
              ),
              TextField(
                onChanged: (newtask){
           newtasktitle=newtask;
                },
                autofocus: true,
                textAlign: TextAlign.center,
              ),
            SizedBox(height: 20),
            FlatButton(
                onPressed: (){
          Provider.of<Taskdata>(context,listen: false).addtask(newtasktitle);
          Navigator.pop(context);
            },
              color: Colors.lightBlueAccent,
                child: Text('Add',
                style: TextStyle(
                  color: Colors.white,
                ),),
            )
            ],
          ),
        ),
      ),
    );
  }
}
