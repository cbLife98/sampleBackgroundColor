import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new MyHomeApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomeApp extends StatefulWidget {
  @override
  _MyHomeAppState createState() => _MyHomeAppState();
}

class _MyHomeAppState extends State<MyHomeApp> {
  Color color = Colors.orangeAccent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height:90.0,
            width: 90.0,
            child: FittedBox(
              child: FloatingActionButton(
                backgroundColor: Colors.white,
                child: new FlutterLogo(
                  size: 30.0,
                ),
                  onPressed: () => setState(() => color = Colors.orangeAccent)
              ),
            ),
          ),
          new Padding(padding: EdgeInsets.all(30.0)),
          new Container(
            child: new Text("Hi there,",style: new TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30.0),),
          ),
          new Padding(padding: EdgeInsets.all(8.0)),
          new Container(
            child: new Text("Welcome to Flutter",style: new TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30.0),),
          ),
          new Padding(padding: EdgeInsets.all(120.0)),
          new Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  elevation: 5.0,
                  shape: CircleBorder(),
                  onPressed: () => setState(() => color = Colors.redAccent),
                  color: Colors.redAccent,
                ),
                RaisedButton(
                  elevation: 5.0,
                  shape: CircleBorder(),
                  onPressed: () => setState(() => color = Colors.blue),
                  color: Colors.blue,
                ),
                RaisedButton(
                  elevation: 5.0,
                  shape: CircleBorder(),
                  onPressed: () => setState(() => color = Colors.green),
                  color: Colors.green,
                ),
                RaisedButton(
                  elevation: 5.0,
                  shape: CircleBorder(),
                  onPressed: () => setState(() => color = Colors.purpleAccent),
                  color: Colors.purpleAccent,
                ),
              ],
            ),
          ),
          new Padding(padding: EdgeInsets.all(16.0)),
          new Container(
            child: new Text("Choose a new color",style: new TextStyle(color: Colors.white,fontSize: 22.0),),
          ),
        ],
      ),
    );
  }
}

