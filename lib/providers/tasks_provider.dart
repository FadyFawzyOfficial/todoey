import 'dart:collection';

import 'package:flutter/foundation.dart';

import '../models/task.dart';

class TasksProvider extends ChangeNotifier {
  List<Task> _tasks = [
    Task(title: 'Buy milk'),
    Task(title: 'Buy eggs'),
    Task(title: 'Buy bread'),
  ];

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  int get tasksCount => _tasks.length;

  void addTask(String taskTitle) {
    _tasks.add(Task(title: taskTitle));
    notifyListeners();
  }

  void deleteTask({required Task task}) {
    _tasks.remove(task);
    notifyListeners();
  }

  void toggleTaskState({required Task task}) {
    task.toggleDone();
    notifyListeners();
  }
}
