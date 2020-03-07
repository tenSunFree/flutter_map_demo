import 'package:fimber/fimber_base.dart';
import 'package:flutter/material.dart';
import 'common/app.dart';

void main() {
  // initialize logging tree on start of your application
  Fimber.plantTree(DebugTree());
  runApp(App());
}
