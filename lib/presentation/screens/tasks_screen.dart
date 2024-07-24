// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_todo/domain/task/entities/task.dart';
// import 'package:flutter_todo/infrasturcture/local_database/drift_database.dart';
// import 'package:flutter_todo/infrasturcture/task/task_repo_impl.dart';
// import 'package:flutter_todo/presentation/screens/add_task_screen.dart';
// import 'package:flutter_todo/presentation/widgets/tasks_list.dart';


// class TasksScreen extends StatefulWidget {
//   //  final TaskRepoImpl taskRepo;
//   TasksScreen({Key? key}) : super(key: key );

//   @override
//   State<TasksScreen> createState() => _TasksScreenState();
// }

// class _TasksScreenState extends State<TasksScreen> {
// // void _addTask(BuildContext context){
// //   showModalBottomSheet(context: context, builder: (context)=>SingleChildScrollView(
// //     child: Container(padding: EdgeInsets.only(
// //       bottom: MediaQuery.of(context).viewInsets.bottom
// //     ),
// //     child: AddTaskScreen(),),
// //   ));
// // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:  Scaffold(
//           appBar: AppBar(
//             title: Text("Tasks App"),
//           ),
//           body: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
              
//             ],
//           ),

//           // floatingActionButton: FloatingActionButton(
            
//           //   onPressed: (value){
//           //             final updatedTask = task.copyWith(isCompleted: value);
//           //             taskRepo.save(task: updatedTask);
                   
//           //   },
//           //   tooltip: 'Add Task',
//           //   child: Icon(Icons.add),
//           // ),
//         )
//     );
//     // BlocBuilder<>(
//     //   builder: (context, state) {
        
        
//     //   },
//     // );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_todo/domain/task/entities/task.dart';
import 'package:flutter_todo/infrasturcture/task/task_repo_impl.dart';
import 'package:flutter_todo/presentation/screens/add_task_screen.dart';

class TaskPage extends StatefulWidget {
  final TaskRepoImpl taskRepo;

  TaskPage({required this.taskRepo});

  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  late Stream<List<Task>> taskStream;

  @override
  void initState() {
    super.initState();
    taskStream = widget.taskRepo.watchAll;
  }

  void _addNewTask(Task newTask) {
    widget.taskRepo.save(task: newTask);
    setState(() {
      // No need to update the stream, since the stream will automatically update
    });
  }

  void _removeTask(String id) async {
    await widget.taskRepo.remove(id: id);
    setState(() {
      // No need to update the stream, since the stream will automatically update
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tasks'),
      ),
      body: StreamBuilder<List<Task>>(
        stream: taskStream,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No Tasks'));
          } else {
            final tasks = snapshot.data!;
            return ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                final task = tasks[index];
                return ListTile(
                  title: Text(task.name),
                  subtitle: Text('Start Date: ${task.startDate}, End Date: ${task.endDate ?? "Not Completed"}'),
                  trailing: Checkbox(
                    value: task.endDate != null,
                    onChanged: (value) {
                      final updatedTask = Task(
                        id: task.id,
                        name: task.name,
                        startDate: task.startDate,
                        endDate: value == true ? DateTime.now() : null,
                      );
                      widget.taskRepo.save(task: updatedTask);
                      setState(() {
                         _removeTask(task.id);
                        // No need to update the stream, since the stream will automatically update
                      });
                    },
                  ),
                  onLongPress: () {
                    setState(() {
                       _removeTask(task.id);
                    });
                   
                  },
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final newTask = await Navigator.push<Task>(
            context,
            MaterialPageRoute(
              builder: (context) => AddTaskScreen(),
            ),
          );

          if (newTask != null) {
            _addNewTask(newTask);
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
