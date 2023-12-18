import 'package:flutter/material.dart';
import 'package:task_app/models/task.dart';

import '../blocs/bloc_exports.dart';

class AddTaskBottomSheet extends StatelessWidget {
  const AddTaskBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(children: [
        const Text(
          'Add Text',
          style: TextStyle(fontSize: 24),
        ),
        const SizedBox(height: 10),
        TextField(
          autofocus: true,
          controller: titleController,
          decoration: const InputDecoration(
            label: Text("Title"),
            border: OutlineInputBorder(),
          ),
        ),
        Row(
          children: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                Task task = Task(title: titleController.text);
                context.read<TasksBloc>().add(AddTask(task: task));
                Navigator.pop(context);
              },
              child: const Text('Add'),
            ),
          ],
        ),
      ]),
    );
  }
}
