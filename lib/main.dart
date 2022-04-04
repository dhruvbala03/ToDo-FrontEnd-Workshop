import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app_demo/reusable/my_text_input.dart';
import 'package:todo_app_demo/reusable/plus_button.dart';
import 'package:todo_app_demo/reusable/taskview.dart';

import 'models/task.dart';

void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatefulWidget {
  const TodoApp({Key? key}) : super(key: key);

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  TextEditingController _nameController = TextEditingController();
  List<Task> _taskList = [];

  void addTask() {
    setState(() {
      _taskList.add(Task(name: _nameController.text));
      _nameController.text = "";
    });
  }

  void deleteTask(Task task) {
    setState(() {
      _taskList.remove(task);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Todo List",
      home: Scaffold(
        body: Container(
          margin: const EdgeInsets.all(50),
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              const Text(
                "Todo List",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: MyTextInput(
                      text: "Task Name...",
                      controller: _nameController,
                    ),
                  ),
                  const SizedBox(width: 15),
                  PlusButton(onPress: addTask),
                ],
              ),
              const SizedBox(height: 50),
              Expanded(
                child: (_taskList.isEmpty)
                    ? const Text(
                        "No tasks added",
                        textAlign: TextAlign.center,
                      )
                    : ListView.builder(
                        itemCount: _taskList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return TaskView(
                            task: _taskList[index],
                            deleteFunction: () => deleteTask(_taskList[index]),
                          );
                        },
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
