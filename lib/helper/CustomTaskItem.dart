import 'package:flutter/material.dart';
import 'package:todo_app/Server.dart';
import 'package:todo_app/Ui/CustomIcon.dart';

class CustomTaskItem extends StatefulWidget {
  CustomTaskItem(
      {super.key,
      required this.taskName,
      required this.value,
      required this.taskid});
  final String taskName;
  late bool value;
  final String taskid;
   bool isCheck = false;
  @override
  State<CustomTaskItem> createState() => _CustomTaskItemState();
}

class _CustomTaskItemState extends State<CustomTaskItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Checkbox(
            value: widget.value,
            onChanged: (value) {
              setState(() {
                widget.value = value!;
              });
              Server().updateTask(taskid: widget.taskid, value: widget.value);
            },
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(
              widget.taskName,
              style:  TextStyle(
              decoration: widget.value==true ? TextDecoration.lineThrough : null,  
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          CustomIcon(taskid: widget.taskid,),
        ],
      ),
    );
  }
}
