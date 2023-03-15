import 'package:flutter/material.dart';

class Addtotask extends StatelessWidget {
  const Addtotask({super.key, required this.adstoTask});

  final Function adstoTask;

  @override
  Widget build(BuildContext context) {
    String? newTaskText;
    return Container(
      color: const Color(0xff757575),
      child: Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 228, 223, 223),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0))),
        child: Column(children: [
          SizedBox(
            height: 10,
          ),
          CircleAvatar(
              backgroundColor: Color.fromARGB(255, 23, 30, 34),
              maxRadius: 42.0,
              child: Icon(
                Icons.list,
                size: 42.0,
                color: Color.fromARGB(255, 253, 252, 252),
              )),
          SizedBox(
            height: 10,
          ),
          Text(
            "Todoey",
            style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlue),
          ),
          const SizedBox(
            height: 10.2,
          ),
          const Text(
            "ADD Task",
            style: TextStyle(
                fontSize: 23,
                color: Color.fromARGB(255, 79, 97, 112),
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10.2,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                newTaskText = value;
              },
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  hintText: "add task..",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21.0))),
            ),
          ),
          SizedBox(
            height: 60,
            width: 340,
            child: ElevatedButton(
                onPressed: () {
                  adstoTask(newTaskText);
                },
                child: Text(
                  "Add",
                  style: TextStyle(fontSize: 20.0),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlue)),
          ),
          const Spacer(),
        ]),
      ),
    );
  }
}
