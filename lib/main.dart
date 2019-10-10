import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.pinkAccent,
      home: Scaffold(
        backgroundColor: Colors.pinkAccent,
        appBar: AppBar(
          title: Text("Using Images"),
          backgroundColor: Colors.pinkAccent,
        ),
        body: Center(
            child: Container(
          padding: EdgeInsets.only(top: 35.0),
          child: Column(
            children: <Widget>[
              Text(
                "Will Use Image Here",
                textDirection: TextDirection.ltr,
              ),
              image(),
              button()
            ],
          ),
        )),
      ),
    );
  }
}

class image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage assetImage = AssetImage('images/image_sample.jpg');
    Image image = Image(
      image: assetImage,
      width: 250,
      height: 300,
    );
    return Container(
      child: image,
    );
  }
}

class button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(30.0),
      width: 250,
      height: 50,
      child: RaisedButton(
        elevation: 10,
        color: Colors.greenAccent,
        child: Text(
          "Click me",
          style: TextStyle(fontSize: 22),
        ),
        onPressed: () {
          buttonpressed(context);
        },
      ),
    );
  }

  void buttonpressed(BuildContext context) {
    var alert = AlertDialog(
      backgroundColor: Colors.amber,
      title: Text(
        "Button pressed",
        style: TextStyle(color: Colors.greenAccent),
      ),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }
}
