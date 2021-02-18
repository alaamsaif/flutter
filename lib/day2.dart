import 'package:flutter/material.dart';

import 'myCard.dart';

class MyHomeDay2 extends StatefulWidget {
  MyHomeDay2({Key key}) : super(key: key);

  @override
  _MyHomeDay2State createState() => _MyHomeDay2State();
}

class _MyHomeDay2State extends State<MyHomeDay2> {
  List<String> images = [
    "https://picsum.photos/id/237/300/200",
    "https://picsum.photos/id/237/300/200"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Container(
            color: Colors.white,
            margin: EdgeInsets.all(5),
        child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: images.length,
            itemBuilder: (BuildContext context, int index) {
              return MyCard(
                imgLink: images[index],
              );
            })
        ));
  }
}