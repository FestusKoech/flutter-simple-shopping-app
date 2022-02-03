import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(notifications());

class notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Notifications'),
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
        body: SizedBox(
          height: 50.0,

          child: Card(
            child: Center(
              child: Text(
                'Have an account? Proceed to login below',
                style: TextStyle(color: Colors.black87),
              ), //Text
            ), //Center
          ), //Card
        ),
      ),
    );
  }
}



