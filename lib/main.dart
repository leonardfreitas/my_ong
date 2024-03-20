import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ola'),
        ),
        body: const Center(
          child: const Text(
            'Leonardo',
            style: TextStyle(
              fontSize: 28.0,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Text('OK'),
          onPressed: () => {},
        ),
      ),
    );
  }
}
