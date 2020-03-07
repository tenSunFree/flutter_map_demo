import 'package:fimber/fimber_base.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map_demo/home/home_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Fimber.d('app.dart, App, build');
    return MaterialApp(
      title: 'FlutterMapDemo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}