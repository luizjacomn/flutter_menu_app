import 'package:flutter/material.dart';
import 'package:menu_app/first_page.dart';
import 'package:menu_app/second_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                child: Text('E'),
              ),
              accountName: Text(
                'Elyka',
                style: TextStyle(
                  color: Colors.blueGrey[800],
                ),
              ),
              accountEmail: Text(
                'elyka@gmail.com',
                style: TextStyle(
                  color: Colors.blueGrey[800],
                ),
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  stops: [0.65, 1.0],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromARGB(255, 227, 242, 253),
                    Colors.orange,
                  ],
                ),
              ),
            ),
            ListTile(
              title: Text('First'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => FirstPage()));
              },
            ),
            Divider(),
            ListTile(
              title: Text('Second'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => SecondPage()));
              },
            ),
          ],
        ),
      ),
      body: Container(
        child: Center(
          child: Icon(
            Icons.home,
            size: 80,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
