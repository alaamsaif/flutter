import 'package:day1/imagepage.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyCard extends StatefulWidget {
  String imgLink;
  MyCard({this.imgLink});
  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
              shrinkWrap: true,
              children: <Widget>[
              GestureDetector(
                child:Image.network(widget.imgLink),
                onTap: (){
                  Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) =>ImagePage()),
                      );
                },
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
              ],
            )
    );
  }
}