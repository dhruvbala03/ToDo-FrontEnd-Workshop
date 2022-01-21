import 'package:flutter/material.dart';

class TaskView extends StatelessWidget {
  final deleteFunction;
  final String taskName;

  const TaskView({Key? key, required this.deleteFunction, required this.taskName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 25, right: 25),
      decoration: BoxDecoration(
        border: Border.all(),
        color: Colors.grey[300],
      ),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          children: [
            Text(taskName),
            Expanded(child: Container()),
            IconButton(
              onPressed: deleteFunction,
              icon: const Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
