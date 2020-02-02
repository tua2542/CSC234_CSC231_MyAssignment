import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tutorials',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        centerTitle: false,
      ),
      body: Container(
        color: Colors.yellowAccent,
        padding: EdgeInsets.all(60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('Hello Everyone', style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
            Padding(padding: EdgeInsets.only(bottom: 100.0),),
            Image.asset('assets/images/tua2542.jpg',height: 200,width: 200),
            Padding(padding: EdgeInsets.only(bottom: 50.0),),
            Text('My name is Sakdipat Ontoum', style: TextStyle(fontSize: 20.0),textAlign: TextAlign.center,),
            Text('My student ID is 61130500229', style: TextStyle(fontSize: 20.0),textAlign: TextAlign.center,),
            Text('My hobby is watch Neflix', style: TextStyle(fontSize: 20.0),textAlign: TextAlign.center,),
          ],
        ),
      ),
    );
  }
}