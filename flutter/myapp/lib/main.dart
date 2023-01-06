import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// 최상위 위젯인 MyApp은 정적인 위젯
// Stateless 위젯으로 지정

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First app',
      theme: ThemeData(
          // 색상 견본
          primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
