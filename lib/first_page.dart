import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('First Page'),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  text: 'Raised',
                ),
                Tab(
                  text: 'Flat',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Center(
                child: Text('Raised'),
              ),
              Center(
                child: Text('Flat'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
