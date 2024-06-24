import 'package:flutter/material.dart';
import 'package:flutter_todo/domain/blocs/bloc_exports.dart';
import 'package:flutter_todo/data/models/task.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();

    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const Text(
            'Add Task',
            style: TextStyle(fontSize: 25),
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            autofocus: true,
            controller: titleController,
            decoration: const InputDecoration(
                label: Text('Title'), border: OutlineInputBorder()),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('cancel')),
              ElevatedButton(
                  onPressed: () {
                    var task = Task(
                        title: titleController.text,
                        date: DateTime.now().toString());
                    context.read<TasksBloc>().add(TasksEvent.add(task: task));
                    Navigator.pop(context);
                  },
                  child: const Text('Ass'))
            ],
          ),
        ],
      ),
    );
  }
}
