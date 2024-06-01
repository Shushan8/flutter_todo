import 'package:flutter/material.dart';
import 'package:flutter_todo/business_logic/blocs/bloc_exports.dart';
import 'package:flutter_todo/data/models/task.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
      TextEditingController titleController =TextEditingController();

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
                    var task = Task(
                      title: titleController.text,
                      date: DateTime.now().toString()
                    );
                    context.read<TasksBloc>().add(AddTask(task: task));
                    Navigator.pop(context);
                  },
                  child: Text('Ass'))
            ],
          ),
        ],
      ),
    );
  }
}
