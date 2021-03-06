import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Color(0xFF2E425A),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            buildContainerTitle(),
            Container(
              padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
              child: Column(
                children: <Widget>[
                  buildTextFormFieldUserName(),
                  SizedBox(height: 10.0),
                  buildTextFormFieldEmail(),
                  SizedBox(height: 10.0),
                  buildTextFormFieldPassword(),
                  SizedBox(height: 50.0),
                  buildContainerButton(),
                ],
              ),
            )
          ],
        ));
  }

  Container buildContainerTitle() {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
            child: Text(
              "Sign Up",
              style: TextStyle(
                  fontSize: 80.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          )
        ],
      ),
    );
  }

  Container buildContainerButton() {
    return Container(
        height: 40.0,
        child: Material(
          borderRadius: BorderRadius.circular(20.0),
          shadowColor: Colors.greenAccent,
          color: Colors.green,
          elevation: 7.0,
          child: GestureDetector(
            onTap: () {},
            child: Center(
              child: Text(
                'SIGN UP',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat'),
              ),
            ),
          ),
        ));
  }

  TextFormField buildTextFormFieldPassword() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Password ',
          labelStyle: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              color: Colors.grey),
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.red))),
      obscureText: true,
    );
  }

  TextFormField buildTextFormFieldEmail() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Email Address ',
          labelStyle: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              color: Colors.grey),
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.red))),
    );
  }

  TextFormField buildTextFormFieldUserName() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: "User name",
          labelStyle: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              color: Colors.grey),
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.red))),
    );
  }
}
