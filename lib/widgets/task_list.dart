import 'package:flutter/material.dart';
import 'package:todo_app/models/task.dart';
import 'package:todo_app/widgets/task_tile.dart';


class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Task> tasks = [
      Task(title: 'taskOne',isChecked: false),
      Task(title: 'taskTwo',isChecked: false),
      Task(title: 'taskThree',isChecked: false),
    ];
    return ListView.builder(
      itemCount: tasks.length,

      itemBuilder: (context,index){
        return TaskTile(isChecked: tasks[index].isChecked, taskTitle: tasks[index].title, checkboxCallback: (v){}, longPressCallback: (){});
      },
      // children: [
      //   TaskTile(taskTitle: 'Taskssss', isChecked: false, checkboxCallback: (bool? v){print(v);},longPressCallback: (){},),
      //   TaskTile(taskTitle: 'Taskssss', isChecked: false, checkboxCallback: (bool? v){print(v);},longPressCallback: (){},),
      //   TaskTile(taskTitle: 'Taskssss', isChecked: false, checkboxCallback: (bool? v){print(v);},longPressCallback: (){},),
      // ],

    );
  }
}
