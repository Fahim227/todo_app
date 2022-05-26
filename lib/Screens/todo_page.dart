
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import 'package:todo_app/Screens/add_task.dart';
import 'package:todo_app/widgets/task_list.dart';
import 'package:todo_app/widgets/task_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    int totalTask = 12;
    bool? _isChecked = false;
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlue,
          child: Icon(Icons.add),
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: AddTask(
                      context: context,
                    ),
                  )
                );
              },
            );
          },
        ),
        backgroundColor: Colors.lightBlue,
        body: Padding(
          padding: EdgeInsets.only(
            left: 20.0,
            right: 20.0,
            top: 60.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                child: Icon(
                  Icons.list,
                  color: Colors.lightBlue,
                  size: 40.0,
                ),
                backgroundColor: Colors.white,
                radius: 40.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'ToDo',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '${totalTask.toString()} tasks remaining',
                style: TextStyle(color: Colors.white, fontSize: 15.0),
              ),
              SizedBox(
                height: 10.0,
              ),
              Expanded(
                  child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: TaskList(),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.only(
                        topStart: Radius.circular(20),
                        topEnd: Radius.circular(20))),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
