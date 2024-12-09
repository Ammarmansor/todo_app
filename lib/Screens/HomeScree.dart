import 'package:flutter/material.dart';
import 'package:todo_app/Ui/CustomAppbar.dart';
import 'package:todo_app/Ui/SearchTextField.dart';
import 'package:todo_app/Ui/TasksListView.dart';
import 'package:todo_app/Ui/addtask.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Expanded(child: Customappbar()),
      ),
      body: const Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchTextfield(),
            SizedBox(
              height: 20,
            ),
            Text(
              'All Tasks',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(child: TasksListView()),
            AddTask(),
          ],
        ),
      ),
    );
  }
}
