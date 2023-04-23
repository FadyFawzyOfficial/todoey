import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/tasks_provider.dart';
import 'task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TasksProvider>(
      builder: (context, tasksProvider, child) {
        return ListView.builder(
          itemCount: tasksProvider.tasksCount,
          itemBuilder: (context, index) {
            final currentTask = tasksProvider.tasks[index];
            return TaskTile(
              taskTitle: currentTask.title,
              isChecked: currentTask.isDone,
              toggleCheckbox: (value) {},
            );
          },
        );
      },
    );
  }
}
