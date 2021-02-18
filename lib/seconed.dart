import 'package:flutter/material.dart';
class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body:ListView(
       children: <Widget>[
         Text("HELLO"),
       
      ],
      )
    );
  }
}