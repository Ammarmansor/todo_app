import 'package:flutter/material.dart';
import 'package:todo_app/Server.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.taskid});
final String taskid;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.red,
      ),
      child: IconButton(
        onPressed: () {
          Server().deleteTask(taskid: taskid);
        },
        icon: const Icon(
          Icons.delete,
          color: Colors.black,
        ),
        
      ),
    );
  }
}
