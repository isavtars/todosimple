import 'package:flutter/material.dart';

class ListTileee extends StatelessWidget {
  const ListTileee(
      {super.key, required this.taskTitle, required this.isChecked,  required this.checkedCallback});
  final String taskTitle;

  final bool isChecked;
  final Function(bool?) checkedCallback;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Text(
          taskTitle,
          style: TextStyle(
              color: Color.fromARGB(255, 250, 249, 249),
              fontSize: 23.0,
              decorationColor: Color.fromARGB(255, 253, 124, 3),
              decorationThickness: 3,
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          value: isChecked,
          checkColor: Color.fromARGB(255, 252, 246, 246),
          onChanged: checkedCallback,
        ));
  }
}
