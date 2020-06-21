import 'package:flutter/material.dart';

class loading extends StatefulWidget {

  loading({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
  }

class _MyHomePageState extends State<loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new CircularProgressIndicator()
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }

}