import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_guid/flutter_guid.dart';
import 'package:flutter_todo/domain/task/entities/task.dart';
import 'package:flutter_todo/infrasturcture/local_database/drift_database.dart';
import 'package:flutter_todo/infrasturcture/task/task_repo_impl.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    final AppDriftDatabase localDatabase = AppDriftDatabase(); // Ստեղծում ենք ձեր տվյալների բազայի օբյեկտը։
final TaskRepoImpl taskRepo = TaskRepoImpl(localDatabase);

    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            'Add Task',
            style: TextStyle(fontSize: 25),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            autofocus: true,
            controller: titleController,
            decoration: InputDecoration(
                label: Text('Title'), border: OutlineInputBorder()),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('cancel')),
              ElevatedButton(
                  onPressed: () {
                    final newTask = Task(
                        id: UniqueKey().toString(),
                        name: 'New Task',
                        startDate: DateTime.now());
                    taskRepo.save(task: newTask);
                    // TaskRepoImpl.save(
                    //       task: Task(
                    //           id: 1.toString(),
                    //           name: titleController.text,
                    //           startDate: DateTime.now()));
                    // var task = Task(

                    //   title: titleController.text,
                    //   date: DateTime.now().toString()
                    // );
                    // context.read<TasksBloc>().add(AddTask(task: task));
                    Navigator.pop(context);
                  },
                  child: Text('Add'))
            ],
          ),
        ],
      ),
    );
  }
}
