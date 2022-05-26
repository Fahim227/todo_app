import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {

  AddTask({required this.context});

  final BuildContext context;


  @override
  Widget build(BuildContext context) {
    TextEditingController? textEditingController;
    String task;
    return Center(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.lightBlue,fontWeight: FontWeight.bold,fontSize: 30.0),),
            TextField(
              textAlign: TextAlign.center,
              autofocus: true,
              controller: textEditingController,
              onChanged: (value){
                print(value);
                task = value;
              },
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter Your Task',
              ),
            ),

            FlatButton(
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.lightBlueAccent,
              onPressed: () {

                // Provider.of<TaskData>(context).addTask(newTaskTitle);
                // Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
