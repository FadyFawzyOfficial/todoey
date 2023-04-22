import 'package:flutter/material.dart';

class AddTaskBottomSheet extends StatelessWidget {
  final ValueChanged<String> addTask;
  final _controller = TextEditingController();

  AddTaskBottomSheet({super.key, required this.addTask});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsetsDirectional.only(
          start: 16,
          end: 16,
          top: 16,
          bottom: MediaQuery.of(context).viewInsets.bottom + 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 32,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: TextField(
                controller: _controller,
                autofocus: true,
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              onPressed: () => addTask(_controller.text),
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(fontSize: 18),
                padding: const EdgeInsetsDirectional.all(16),
                backgroundColor: Colors.lightBlueAccent,
              ),
              child: const Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}
