import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo/presentation/widgets/tasks_list.dart';

class EditTaskScreen extends StatelessWidget {
  //  Task oldTask;
  //  EditTaskScreen({
  //   required this.oldTask,
  //   super.key,
  // });
  // void _removeOrDeleteTask(BuildContext ctx, Task task) {
  //   task.isDeleted!
  //       ? ctx.read<TasksBloc>().add(DeleteTask(task: task))
  //       : ctx.read<TasksBloc>().add(RemoveTask(task: task));
  // }


  @override
  Widget build(BuildContext context) {
    
      TextEditingController titleController =TextEditingController();

    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            'Edit Task',
            style: TextStyle(fontSize: 25),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            autofocus: true,
            controller: titleController,
            decoration: InputDecoration(
                label: Text('Title'),
                 border: OutlineInputBorder()),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('cancel')),
              ElevatedButton(
                  onPressed: () {

                  //   print(oldTask);
                  //   Task editedTask = Task(
                  //     title: titleController.text,
                  //     date: DateTime.now().toString()
                  //   );
                  //   print(editedTask);
                  //   _removeOrDeleteTask(context, oldTask);
                  //   context.read<TasksBloc>().add(AddTask(task: editedTask));
                  //   Navigator.pop(context);
                   },
                  child: Text('Save'))
            ],
          ),
        ],
      ),
    );
  }
}
