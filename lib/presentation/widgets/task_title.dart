import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo/business_logic/bloc/tasks_bloc.dart';
import 'package:flutter_todo/data/models/task.dart';
import 'package:flutter_todo/presentation/screens/edit_task_screen.dart';
import 'package:intl/intl.dart';

class Task_Title extends StatelessWidget {
   Task_Title({
    super.key,
    required this.task,
  });

  final Task task;
  void _removeOrDeleteTask(BuildContext ctx, Task task) {
    task.isDeleted!
        ? ctx.read<TasksBloc>().add(DeleteTask(task: task))
        : ctx.read<TasksBloc>().add(RemoveTask(task: task));
  }
void _editTask(BuildContext context){
  showModalBottomSheet(context: context,
   builder: (context) =>SingleChildScrollView(child: Container(
    padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
    child: EditTaskScreen(oldTask: task,),
   ),)
   );
}
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  task.title,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 18,
                      decoration:
                          task.isDone! ? TextDecoration.lineThrough : null),
                ),
                Text(
                    DateFormat().add_yMMMEd().add_Hms().format(DateTime.now())),
              ],
            ),
          ),
          // Checkbox(
          //     value: task.isDone,
          //     onChanged: task.isDeleted == false
          //         ? (value) {
          //             context.read<TasksBloc>().add(UpdateTask(task: task));
          //           }
          //         : null),
          PopupMenuItem(
              child: TextButton.icon(
            onPressed: ()=>_editTask(context,),
            icon: Icon(Icons.edit),
            label: Text('Edit'),
          )),
          InkWell(
              child: TextButton.icon(
                onPressed: null,
                icon: Icon(Icons.delete),
                label: Text('Delete'),
              ),
              onTap: () => _removeOrDeleteTask(context, task))
        ],
      ),
    );
  }
}
// ListTile(
//       title: Text(task.title),
//       trailing: Checkbox(value: task.isDone, onChanged: (value){
//         context.read<TasksBloc>().add(UpdateTask(task: task));
//       }),
      
//       onLongPress: ()=> context.read<TasksBloc>().add(DeleteTask(task: task)),
//     );