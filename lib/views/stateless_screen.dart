import 'package:flutter/material.dart';

class StatelessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StatelessWidget'),
      ),
      body: const Center(
        child: Text(
          'Este es un texto fijo.',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}