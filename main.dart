import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First App',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: DummyWidget(),
    );
  }
}

class DummyWidget extends StatefulWidget {
  @override
  _DummyWidgetState createState() => _DummyWidgetState();
}

class _DummyWidgetState extends State<DummyWidget> {
  bool _isYellow = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _isYellow ? Colors.red : Colors.yellow,
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: () {
                setState(() {
                  _isYellow = !_isYellow;
                });
              },
              child: Text(_isYellow ? 'RED ' : 'YELLOW'),
            ),
          ],
        ),
      ),
    );
  }
}
