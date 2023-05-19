import 'package:flutter/material.dart';

import 'ball.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ask Me Anything',
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text('Ask Me Anything'),
          backgroundColor: Colors.blue.shade900,
        ),
        body: const Ball(),
      ),
    );
  }
}
