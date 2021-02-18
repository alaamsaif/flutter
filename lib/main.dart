import 'package:day1/day2.dart';
import 'package:day1/services/getPosts.dart';
import 'package:day1/views/CardDetails.dart';
import 'package:day1/views/myCardApi.dart';
import 'package:flutter/material.dart';
import 'models/post.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePageDay3(
        title: "Posts",
      ),
      // MyHomePage(title:"Sign in",),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Center(child: Text(widget.title)),
        ),
        body: Container(
            color: Colors.white,
            height: 400,
            margin: EdgeInsets.all(20),
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.all(20.0),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Email',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Password',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyHomeDay2()),
                      );
                    },
                    child: Text('Sign in'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                      child: const Text('Need an account ? register',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Roboto',
                            fontSize: 18,
                          ))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                      child: const Text('Forget password',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ))),
                ),
              ],
            )));
  }
}

class MyHomePageDay3 extends StatefulWidget {
  MyHomePageDay3({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageDay3State createState() => _MyHomePageDay3State();
}

class _MyHomePageDay3State extends State<MyHomePageDay3> {
  List<Post> postlist = new List();

  @override
  void initState() {
    super.initState();
    getPostsFromSer();
  }

  getPostsFromSer() async {
    postlist = await PostService().getPosts();
    print(postlist);
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: postlist.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
                onTap: (){
                  Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) =>CardDetailes(
                      title: postlist[index].title, 
                      body: postlist[index].body,
                      )),
                      );
                },
                child: Padding(
                padding: const EdgeInsets.all(8.0),
                  child: MyCardFromApi(
                    title: postlist[index].title,
                  ),
                
              ),
            );
          }),
    );
  }
}
