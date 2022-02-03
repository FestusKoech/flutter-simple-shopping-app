import 'package:flutter/material.dart';

import 'home.dart';

void main() => runApp(const contact());

class contact extends StatelessWidget {
  const contact({Key? key}) : super(key: key);

  static const String _title = 'Contact Us';

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
            body: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'E-mail Required',
                          hintText: 'eg. username@gmail.com',
                        ),
                      ),
                    ),
                    Center(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            TextField(
                              decoration: InputDecoration(
                                hintText: "Insert your message",
                              ),
                              scrollPadding: EdgeInsets.all(20.0),
                              keyboardType: TextInputType.multiline,
                              maxLines: 7,
                              autofocus: true,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,

                      child: Card(
                        child: Center(
                          child: Text(
                            'Have an account? Proceed to login below',
                            style: TextStyle(color: Colors.black87),
                          ), //Text
                        ), //Center
                      ), //Card
                    ),
                    RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('Submit'),
                      onPressed: () {},
                    )
                  ],
                ))));
  }
}
