import 'package:flutter/material.dart';

void main() => runApp(const Todoey());

class Todoey extends StatelessWidget {
  const Todoey({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Todoey App')),
        body: const Center(child: Text('Todoey App')),
      ),
    );
  }
}
