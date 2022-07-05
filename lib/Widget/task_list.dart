import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/Widget/task_tiles.dart';
import 'package:to_do_list/modals/task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: ((context, taskData, child) => ListView.builder(
            itemCount: taskData.Count,
            itemBuilder: (context, index) {
              return ResusableTask(
                text: taskData.tasks[index].name,
                isChecked: taskData.tasks[index].isDone,
                CheckonCallback: (value) {
                  taskData.UpadteTask(taskData.tasks[index]);
                },
                longpressCallback: () {
                  taskData.reomveTask(taskData.tasks[index]);
                },
              );
            },
          )),
    );
  }
}
