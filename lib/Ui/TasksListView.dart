import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/Model/TaskModel.dart';
import 'package:todo_app/helper/CustomTaskItem.dart';

class TasksListView extends StatefulWidget {
  const TasksListView({super.key});

  @override
  State<TasksListView> createState() => _TasksListViewState();
}

class _TasksListViewState extends State<TasksListView> {
  final Stream <QuerySnapshot>usersStream =
      FirebaseFirestore.instance.collection('tasks').snapshots();

  List <TaskModel> tasks = [];

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: usersStream,
      builder: (context,AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return const Center(
            child: Text('Something went wrong'),
          );
          
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        tasks.clear();
        for (var i = 0; i < snapshot.data!.docs.length; i++) {
        tasks.add(TaskModel.fromjson(snapshot.data!.docs[i]));
        }
        return ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (context, index) {
            return CustomTaskItem(
              taskid: tasks[index].id,
              value: tasks[index].value,
              taskName: tasks[index].taskName,
            );
          },
        );
      }
    );
  }
}
