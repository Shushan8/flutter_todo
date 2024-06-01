import 'package:flutter/material.dart';
import 'package:flutter_todo/business_logic/blocs/bloc_exports.dart';
import 'package:flutter_todo/data/models/task.dart';

class EditTaskScreen extends StatelessWidget {
  final Task oldTask;
  const EditTaskScreen({
    required this.oldTask,
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    
      TextEditingController titleController =TextEditingController(text: oldTask.title);

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
                    var editedTask = Task(
                      title: titleController.text,
                      date: DateTime.now().toString()
                      
                    );
                    context.read<TasksBloc>().add(EditTask(oldTask: oldTask,newTask: editedTask, ));
                    Navigator.pop(context);
                  },
                  child: Text('Save'))
            ],
          ),
        ],
      ),
    );
  }
}
