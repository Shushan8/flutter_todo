// import 'package:flutter/material.dart';
// import 'package:flutter_todo/domain/task/entities/task.dart';
// import 'package:flutter_todo/infrasturcture/local_database/drift_database.dart';
// import 'package:flutter_todo/infrasturcture/task/task_repo_impl.dart';

// class AddTaskScreen extends StatefulWidget {
//   const AddTaskScreen({
//     super.key,
//   });

//   @override
//   State<AddTaskScreen> createState() => _AddTaskScreenState();
// }

// class _AddTaskScreenState extends State<AddTaskScreen> {
//   @override
//   Widget build(BuildContext context) {
//     TextEditingController titleController = TextEditingController();
//     final AppDriftDatabase localDatabase =
//         AppDriftDatabase(); // Ստեղծում ենք ձեր տվյալների բազայի օբյեկտը։
//     final TaskRepoImpl taskRepo = TaskRepoImpl(localDatabase);

//     return Container(
//       padding: EdgeInsets.all(20),
//       child: Column(
//         children: [
//           Text(
//             'Add Task',
//             style: TextStyle(fontSize: 25),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           TextField(
//             autofocus: true,
//             controller: titleController,
//             decoration: InputDecoration(
//                 label: Text('Title'), border: OutlineInputBorder()),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               TextButton(
//                   onPressed: () => Navigator.pop(context),
//                   child: Text('cancel')),
//               ElevatedButton(
//                   onPressed: () {
//                     final newTask = Task(
//                       id: UniqueKey().toString(),
//                       name: titleController.text,
//                       startDate: DateTime.now(),
//                     );
//                     taskRepo.save(task: newTask);
//                     Navigator.pop(context);
//                   },
//                   child: Text('Add'))
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_todo/domain/task/entities/task.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();

    return Scaffold(
      body: Container(
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
                    child: Text('Cancel')),
                ElevatedButton(
                    onPressed: () {
                      final newTask = Task(
                        id: UniqueKey().toString(),
                        name: titleController.text,
                        startDate: DateTime.now(),
                      );
                      Navigator.pop(context, newTask);
                    },
                    child: Text('Add'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
