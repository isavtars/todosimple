import 'package:flutter/material.dart';
import '../models/task.dart';

import '../widget/task_list.dart';
import 'bootsheet_screen.dart';


class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  List<Task> tasks = [
    Task(name: "Go to YOuga"),
    Task(name: "Go to Gim"),
    Task(name: "Go to musics "),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.only(top: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 10, left: 20, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      maxRadius: 43.0,
                      child: Icon(
                        Icons.list,
                        size: 42.0,
                        color: Colors.black,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Todoey",
                    style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("${tasks.length} tasks",
                      style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 218, 208, 213))),
                 
                ],
              ),
            ),
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 29, 52, 80),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0))),
                  padding: EdgeInsets.all(20),
                  child: TaskList(tasks)),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => Addtotask(
                    adstoTask: (newListText) {
                      setState(() {
                        tasks.add(Task(name: newListText));
                      });
                      Navigator.pop(context);
                    },
                  ));

        
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
