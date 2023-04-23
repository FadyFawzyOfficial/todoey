import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final ValueChanged<bool?> toggleCheckbox;
  final VoidCallback deleteCheckbox;

  const TaskTile({
    super.key,
    required this.taskTitle,
    required this.isChecked,
    required this.toggleCheckbox,
    required this.deleteCheckbox,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: deleteCheckbox,
      child: CheckboxListTile(
        activeColor: Colors.lightBlueAccent,
        title: Text(
          taskTitle,
          style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
          ),
        ),
        value: isChecked,
        onChanged: toggleCheckbox,
      ),
    );
  }
}
