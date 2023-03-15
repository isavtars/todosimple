import 'package:flutter/material.dart';
import 'package:statemangementinflutter/widget/tasltile.dart';

import '../models/task.dart';
// import 'tasltile.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;

  const TaskList(this.tasks, {super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.tasks.length,
        itemBuilder: ((context, index) {
          return ListTileee(
            taskTitle: widget.tasks[index].name!,
            isChecked: widget.tasks[index].isDone,
            checkedCallback: (chexkedState) {
              setState(() {
                widget.tasks[index].toogleDone();
              });
            },
          );
        }));
  }
}
