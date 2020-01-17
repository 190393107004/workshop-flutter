import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Nextpage extends StatefulWidget {
  @override
  _NextpageState createState() => _NextpageState();
}

class _NextpageState extends State<Nextpage> {
  var emailController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
      SizedBox(
        height: 40,
        width: 40,
      ),
      TextField(
        decoration: InputDecoration(
            border: InputBorder.none, hintText: 'Enter Search term'),
      ),
      TextField(
          controller: emailController,
          obscureText: true,
          textAlign: TextAlign.left,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'PLEASE ENTER YOUR EMAIL',
            hintStyle: TextStyle(color: Colors.grey),
          )),
      RaisedButton(
        onPressed: () {},
        child: Text("Press"),
        color: Colors.red,
      )
    ]));
  }
}
