import 'package:flutter/material.dart';
import 'dart:async';

class loading extends StatefulWidget {

  loading({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
  }

class _MyHomePageState extends State<loading> {

  Future<void> fetchUserOrder() {
// Imagine that this function is fetching user info but encounters a bug
  return Future.delayed(Duration(seconds: 2),
      () => throw Exception('Logout failed: user ID is invalid'));
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