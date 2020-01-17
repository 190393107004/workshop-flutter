import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sampleproject/page2file.dart';

import 'Nextpage.dart';

void main() {
  runApp(MaterialApp(
    title: "temp",
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double height = 50;
  double width = 50;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Animated Container"),
          backgroundColor: Colors.blueAccent),
      body: Center(
        child: Container(
          width: 50,
          height: 50,
          color: Colors.blue,
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FloatingActionButton(
            child: Text("Refresh"),
            onPressed: () {
              setState(() {
                Random random = Random();
                height = random.nextInt(300).toDouble();
                width = random.nextInt(300).toDouble();
              });
            },
          ),
          MaterialButton(
            child: Text("Page2"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return Nextpage();
                }),
              );
            },
          )
        ],
      ),
    );
  }
}
