import 'package:flutter/material.dart';

void main() => runApp(widget_practice());

class widget_practice extends StatelessWidget {
  const widget_practice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Charactor card',
      home: MyCard(),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BBANTO'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Hello"), Text("Eden"), Text("and"), Text("Jade")],
        ),
      ),
    );
  }
}
