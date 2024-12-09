import 'package:flutter/material.dart';
import 'package:todo_app/Server.dart';
import 'package:todo_app/helper/CustomTextField.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  String taskName = '';
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomTextField(
            controller: controller,
            onChanged: (text) async {
              taskName = text;
            },
            label: 'Add Task',
            hintText: 'Enter Task',
          ),
        ),
        Container(
          height: 60,
          width: 60,
          margin: const EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10),
          ),
          child: IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              if (taskName.isNotEmpty) {
                Server().addTask(taskName: taskName);
                taskName = '';
                controller.clear();
              }
            },
          ),
        ),
      ],
    );
  }
}
