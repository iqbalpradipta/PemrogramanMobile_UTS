import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class HelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Belajar Flutter"),
      ),
      body: const Center(
        child: Text('Hello World'),
      ),
    );
  }
}