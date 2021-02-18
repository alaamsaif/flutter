import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
        appBar: AppBar(
          title: Text("Image"),
        ),
        body: Container(
            color: Colors.white,
            margin: EdgeInsets.all(5),
       child:Image.network("https://picsum.photos/id/237/400/500"),

      )
     );
  
  }
}