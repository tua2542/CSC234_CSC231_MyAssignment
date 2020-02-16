import 'package:flutter/material.dart';
import 'package:flutter_inclass2/screens/register.dart';

void main() => runApp(Home());


class Home extends StatefulWidget {
  @override
 _HomeState createState() => _HomeState();
  
}

class _HomeState extends State<Home> {
  //Mothod
  Widget showLogo(){
    return Container(
      width: 120.0,
      height: 120.0,
      child: Image.asset('assets/images/logo-2.png'),

    );
  }

  Widget showAppName(){
    return
    Align(
    alignment: Alignment.center,
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
     Text('CSC231 Agile Software Engineering',
      textAlign: TextAlign.center, 
      style:
      TextStyle(
      fontSize: 22.0,
      color: Colors.lightBlue.shade700, //color of the textStyle
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
      fontFamily:'Titillium Web',), //the font name already added in the pubspec.yaml
     ),
     Text('CSC234 Mobile Application Development',
      textAlign: TextAlign.center, 
      style: TextStyle(
      fontSize: 22.0,
      color: Colors.lightBlue.shade700, //color of the textStyle
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
      fontFamily:'Titillium Web'), //the font name already added in the pubspec.yaml
     ),
     ],
    ),
    );
         
    
  }
  Widget signUpButton(){ //copy from signlpButton
    return OutlineButton(
      child: Text('Sign Up'),
      onPressed: () {
        print('You Click Sign Up');
        MaterialPageRoute materialPageRoute = MaterialPageRoute(builder: 
        (BuildContext context) => Register());
        Navigator.of(context).push(materialPageRoute);
      },

    ); //line around the button
  }

  Widget signLnButton(){
      return RaisedButton( //3D button
        child: Text('Sign ln') ,
        onPressed: () {},
        );
    }

  Widget showButton(){
    return Row( //align 2 buttons in the same row
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      signLnButton(),
      SizedBox(  //just a space between button
        width:4.0
      ),
      signUpButton(),
    ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: RadialGradient(colors:[Colors.white,Colors.yellow.shade600],radius: 1.0),
          ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              showLogo(),
              showAppName(),
              SizedBox(height: 8.0,),
              showButton()],
            ),
    ),
    ),
    ),
    );
  }
}