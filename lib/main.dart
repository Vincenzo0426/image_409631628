import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var appTitle = const Text('image_409631628');

    var hiFlutter = const Text('🐸勒', style: TextStyle(fontSize: 60),);

    var appBody = Center(child: hiFlutter,);

    var appBar = AppBar(title: appTitle,);

    var app = MaterialApp(
        home: Scaffold(appBar: appBar, body: appBody,)
    );

    return app;
  }
}
