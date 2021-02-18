import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardDetailes extends StatefulWidget {
  CardDetailes({this.title ,this.body});
  String title,body;
  @override
  _CardDetailesState createState() => _CardDetailesState();
}

class _CardDetailesState extends State<CardDetailes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Center(child: Text("Post Detailes")),
      ),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.white,
          margin: EdgeInsets.all(5),
          child: ListView(children: [
            Center(child: Text(widget.title ,style: TextStyle(fontSize: 25))),
            Card(
                child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: Text(widget.body ,style: TextStyle(fontSize:18))),
              ),
            ),
 Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children:[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.thumb_up),
                          Text("Like"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.chat),
                          Text("comment"),
                        ],
                      ),
                    )

                  ]

                ),
              )
          ],)
          ),
      ));
  
  }
}