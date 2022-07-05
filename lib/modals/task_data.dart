import 'dart:collection';

import 'package:to_do_list/modals/task.dart';
import 'package:flutter/foundation.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: "Buy Milk", isDone: true),
    Task(name: "Buy eggs", isDone: false),
    Task(name: "Buy Bread", isDone: false),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get Count {
    return _tasks.length;
  }

  void addT(String taskName) {
    final task = Task(name: taskName);
    _tasks.add(task);
    notifyListeners();
  }

  void UpadteTask(Task task) {
    task.Change();
    notifyListeners();
  }

  void reomveTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
