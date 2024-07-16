import 'package:flutter/material.dart';
import 'package:flutter_todo/domain/task/entities/task.dart';
import 'package:flutter_todo/presentation/widgets/task_title.dart';

class TasksList extends StatelessWidget {
  
   TasksList({
    super.key,
    required this.taskList,
  });

   List<Task> taskList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(itemCount: taskList.length,
        itemBuilder: (context,index){
          var task = taskList[index];
          return Task_Title(task: task);
        }),
    );
  }
}
