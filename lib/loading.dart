import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';

class loading extends StatefulWidget {

  loading({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
  }

class _MyHomePageState extends State<loading> {

  Future<void> fetchUserOrder() {
      return Future.delayed(Duration(seconds: 2),() => {
        debugPrint('fetchUserOrder')
      });
  }

  @override
  Widget build(BuildContext context) {

    fetchUserOrder();

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