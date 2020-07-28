import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Color(0xFF2E425A),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(80.0, 90.0, 0.0, 0.0),
            child: buildTextTitle(),
          ),
          Container(
            padding: EdgeInsets.only(top: 35.0, left: 40.0, right: 20.0),
            child: Column(
              children: <Widget>[buildTextFormFieldEmail()],
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            padding: EdgeInsets.only(top: 35.0, left: 40.0, right: 20.0),
            child: Column(
              children: <Widget>[buildTextFormFieldPassword()],
            ),
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              buildFlatButtonSignIn(),
              buildFlatButtonSignUp(),
            ],
          )
        ],
      ),
    );
  }

  FlatButton buildFlatButtonSignUp() {
    return FlatButton(
      child: Text(
        "Sign Up",
        style: TextStyle(color: Colors.white),
      ),
      color: Colors.red,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(200),
          side: BorderSide(color: Colors.yellowAccent)),
      onPressed: () {},
    );
  }

  FlatButton buildFlatButtonSignIn() {
    return FlatButton(
      child: Text(
        "Sign In",
        style: TextStyle(color: Colors.white),
      ),
      color: Colors.green,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(200),
          side: BorderSide(color: Colors.brown)),
      onPressed: () {},
    );
  }

  Text buildTextTitle() {
    return Text(
      "ENGLISH PRACTİVE",
      style: TextStyle(
          fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.white),
    );
  }

  TextFormField buildTextFormFieldPassword() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Password',
          labelStyle: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              color: Colors.grey),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.lightBlueAccent))),
      obscureText: true,
    );
  }

  TextFormField buildTextFormFieldEmail() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Email address',
          labelStyle: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              color: Colors.grey),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.lightBlueAccent))),
    );
  }
}
