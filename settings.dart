import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(const settings());

class settings extends StatelessWidget {
  const settings({Key? key}) : super(key: key);

  static const String _title = 'Settings';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: _title,
        home: Scaffold(
          appBar: AppBar(
            title: const Text(_title),
            leading: new IconButton(
              icon: new Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
            ),
          ),
          body: Center(
              child: Text(
            'Coming soon',
            style: TextStyle(fontSize: 20.0),
          )),
        ));
  }
}
