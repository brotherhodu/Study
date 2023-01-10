// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HOMER_APP',
      home: Grade(), //Grade 커스텀 위젯 생성
    );
  }
}

class Grade extends StatelessWidget {
  const Grade({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[800],
      appBar: AppBar(
        title: Text('HOMER APP'),
        backgroundColor: Colors.amber[700],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/homer.gif'),
                radius: 100.0,
              ),
            ),
            Divider(
              height: 60.0, //divder 위와 아래 사이의 간격
              color: Colors.grey[850],
              thickness: 0.5,
              endIndent: 30.0,
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Homer Simpson',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'POWER LEVEL',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '25',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: const [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('bald hair',
                    style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0,
                    ))
              ],
            ),
            Row(
              children: const [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('impoite personality',
                    style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0,
                    ))
              ],
            ),
            Row(
              children: const [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('useless beer belly',
                    style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0,
                    ))
              ],
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/homer.jpg'),
                radius: 20.0,
                backgroundColor: Colors.amber[800],
              ),
            )
          ],
        ),
      ),
    );
  }
}
