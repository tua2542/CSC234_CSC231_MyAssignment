import 'package:flutter/material.dart';


class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
  
}

class _RegisterState extends State <Register> {
  final formKey = GlobalKey<FormState>();
  String nameString, emailString, passwordString;
  String usernameHelp = 'Enter your user name',
  emailHelp = 'Enter your valid E-mail',
  passwordHelp = 'Enter your secret code more than 6 character';
  Widget registerButton(){
    return IconButton(
      icon: Icon(Icons.cloud_upload),
      onPressed: () {
        print('Update is clicked');
        if(formKey.currentState.validate()){
          formKey.currentState.save();
          print ('name = $nameString, email = $emailString, password = $passwordString');
        }
      },
    );
  }

  Widget nameText(){
    return TextFormField(
     
      style: TextStyle(color: Colors.purple),
      decoration: InputDecoration(
        icon: Icon(
          Icons.face,
          color: Colors.purple.shade500,
          size: 45,
        ),
        labelText: 'User name :',
        labelStyle: TextStyle(
          color: Colors.purple.shade500,
          fontSize: 20.0,
          fontWeight: FontWeight.bold),
        helperText: '$usernameHelp',
        helperStyle: TextStyle(
          color: Colors.purple,
          fontStyle: FontStyle.italic,
        ),
         
        ),
        validator: (String value){
          if(value.isEmpty) {
            return 'User name is a required filed. Cannot leave it blank';
          } else {
            return null;
          }
          
        },
        onSaved:  (String value){
          nameString = value.trim();
          if(nameString.isNotEmpty){
            setState(() {
              usernameHelp = 'Hello $value';
            });
          }
        },
  
      );
  }


 Widget emailText(){
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(color: Colors.blue.shade700),
      decoration: InputDecoration(
        icon: Icon(
          Icons.email,
          color: Colors.blue.shade700,
          size: 45,
        ),
        labelText: 'e-Mail  :',
        labelStyle: TextStyle(
          color: Colors.purple.shade700,
          fontSize: 20.0,
          fontWeight: FontWeight.bold),
        helperText: '$emailHelp',
        helperStyle: TextStyle(
          color: Colors.purple,
          fontStyle: FontStyle.italic,
        ),
        ),
        validator: (String value){
          if(!((value.contains('@')) && (value.contains('.')))) {
            return 'Please enter your valid email';
          } else {
            return null;
          }
        },
        onSaved:  (String value){
          emailString = value.trim();
          if(emailString.isNotEmpty) {
            setState(() {
              emailHelp = 'Hello $value';
            });
          }
        },
  
      );
  }


 Widget passwordText(){
    return TextFormField(
      obscureText: true,
      style: TextStyle(color: Colors.red),
      decoration: InputDecoration(
        icon: Icon(
          Icons.lock,
          color: Colors.red,
          size: 45,
        ),
        labelText: 'Password :',
        labelStyle: TextStyle(
          color: Colors.red,
          fontSize: 25.0,
          fontWeight: FontWeight.bold),
        helperText: 'Enter your secret code more than 7 characters',
        helperStyle: TextStyle(
          color: Colors.red,
          fontStyle: FontStyle.italic,
        ),
        ),
        validator: (String value){
          if(value.length < 7) {
            return 'Password is too short must more than 7 characters';
          } else {
            return null;
          }
        },
        onSaved:  (String value){
          passwordString = value.trim();
        },
  
      );
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title: Text('Register'),
        actions: <Widget>[registerButton()],
    ),
    body: Form(key: formKey,
    child:  ListView(
      padding: EdgeInsets.all(30.0),
      children: <Widget>[
        nameText(),
        emailText(),
        passwordText(),
      ],
    ),
    ),
    );
  }
  
}