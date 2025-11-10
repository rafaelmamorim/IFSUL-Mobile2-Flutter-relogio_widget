import 'package:flutter/material.dart';
import 'package:relogio_package/relogio_package.dart';

void main() {
  runApp(const RelogioExampleApp());
}

class RelogioExampleApp extends StatelessWidget {
  const RelogioExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemplo Relógio Package',
      home: Scaffold(
        appBar: AppBar(title: const Text('Exemplo do Relógio')),
        body: const Center(
          child: ClockWidget(
            use24HourFormat: true,
            style: TextStyle(fontSize: 48, color: Colors.blue),
          ),
        ),
      ),
    );
  }
}
