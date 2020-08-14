import 'dart:async';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/mainscreen.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "whatsapp",
      theme: ThemeData(
        // splashColor: Colors.transparent,
        // highlightColor: Colors.teal,
        primarySwatch: Colors.teal,
      ),
      home: homepage(),
    );
  }
}

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), mainfunction);
  }

  void mainfunction() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => mainscreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 20,
            child: Image.asset(
              "assets/images/whatsapplogo.png",
              height: 150.0,
              width: 150.0,
            ),
          ),
          Expanded(
              flex: 1,
              child: Text(
                "From",
                style: TextStyle(
                  fontSize: 20.0,
                  decoration: TextDecoration.none,
                ),
              )),
          Expanded(
            flex: 4,
            child: Text(
              "Facebook",
              style: TextStyle(
                fontSize: 25.0,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
