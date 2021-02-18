import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyCardFromApi extends StatefulWidget {
  MyCardFromApi({this.title});
  String title;
  @override
  _MyCardFromApiState createState() => _MyCardFromApiState();
}
// child: Text(widget.title ,style: TextStyle(fontFamily: 'Roboto',fontSize: 18,)),

class _MyCardFromApiState extends State<MyCardFromApi> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
              shrinkWrap: true,
              children: <Widget>[
              Container(
                color: Colors.white70,
                child: Text(widget.title ,style: TextStyle(fontFamily: 'Roboto',fontSize: 15,)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children:[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.thumb_up ,color: Colors.grey,),
                          Text("Like"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.chat ,color: Colors.grey),
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