import 'package:flutter/foundation.dart';

import '../models/task.dart';

class TasksProvider extends ChangeNotifier {
  List<Task> tasks = [
    Task(title: 'Buy milk'),
    Task(title: 'Buy eggs'),
    Task(title: 'Buy bread'),
  ];

  void addTask(String taskTitle) {
    tasks.add(Task(title: taskTitle));
    notifyListeners();
  }
}