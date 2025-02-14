import 'package:flutter/material.dart';
import 'home-page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'WebSocket Demo',
      home: MyHomePage(title: 'WebSocket Demo'),
    );
  }
}
