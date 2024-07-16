import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo/presentation/screens/add_task_screen.dart';
import 'package:flutter_todo/presentation/widgets/tasks_list.dart';


class TasksScreen extends StatefulWidget {
  TasksScreen({Key? key}) : super(key: key);

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
void _addTask(BuildContext context){
  showModalBottomSheet(context: context, builder: (context)=>SingleChildScrollView(
    child: Container(padding: EdgeInsets.only(
      bottom: MediaQuery.of(context).viewInsets.bottom
    ),
    child: AddTaskScreen(),),
  ));
}

  @override
  Widget build(BuildContext context) {
    return Scaffold();
    // BlocBuilder<TasksBloc, TasksState>(
    //   builder: (context, state) {
    //     List<Task> tasksList = state.allTasks;
    //     return Scaffold(
    //       appBar: AppBar(
    //         title: Text("Tasks App"),
    //       ),
    //       body: Column(
    //         crossAxisAlignment: CrossAxisAlignment.center,
    //         children: [
    //           TasksList(taskList: tasksList)
    //         ],
    //       ),
    //       floatingActionButton: FloatingActionButton(
    //         onPressed: ()=> _addTask(context),
    //         tooltip: 'Add Task',
    //         child: Icon(Icons.add),
    //       ),
    //     );
    //   },
    // );
  }
}
