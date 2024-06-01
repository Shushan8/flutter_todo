import 'package:flutter/material.dart';
import 'package:flutter_todo/data/models/task.dart';
import 'package:flutter_todo/business_logic/blocs/bloc_exports.dart';
import 'package:flutter_todo/presentation/widgets/task_title.dart';

class TasksList extends StatelessWidget {
  
  const TasksList({
    super.key,
    required this.taskList,
  });

  final List<Task> taskList;

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
