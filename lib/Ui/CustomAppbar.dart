import 'package:flutter/material.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.menu),
        Text('Todo App'),
        CircleAvatar(
          radius: 15,
          backgroundImage: NetworkImage(
              'https://avatars.githubusercontent.com/u/69343251?v=4'),
        )
      ],
    );
  }
}
