import 'package:flutter/material.dart';
import'package:flutter_inclass2/screens/home.dart';

void main() {
  runApp (MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp (home: Home(),);
  }

  
}