import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class tasktile extends StatelessWidget{

tasktile({ required this.ischecked,required this.tasktitle,required this.textboxcallback,required this.deletetask});
 final bool ischecked;
 final String tasktitle;
 final Function textboxcallback;
final Function()? deletetask;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress : deletetask,

      title: Text(tasktitle,
      style: TextStyle(
        decoration: ischecked? TextDecoration.lineThrough:null,
      ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: ischecked,
        onChanged: (value){
          textboxcallback(value);
        },
      ),
    );
  }
}

