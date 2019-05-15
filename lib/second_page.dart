import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Second Page',
        ),
      ),
      body: Center(
        child: Icon(
          Icons.looks_two,
          color: Theme.of(context).primaryColor,
          size: 80,
        ),
      ),
    );
  }
}
