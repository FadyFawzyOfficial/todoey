import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/tasks_provider.dart';
import 'task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: context.watch<TasksProvider>().tasks.length,
      itemBuilder: (context, index) {
        final currentTask = context.watch<TasksProvider>().tasks[index];
        return TaskTile(
          taskTitle: currentTask.title,
          isChecked: currentTask.isDone,
          toggleCheckbox: (value) {},
        );
      },
    );
  }
}
