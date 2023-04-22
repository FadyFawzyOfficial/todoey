import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({super.key});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: const Text('This is a Task.'),
      value: false,
      onChanged: (value) {},
    );
  }
}
