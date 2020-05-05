import 'package:flutter/material.dart';
import 'package:imran_app/screens_app/loginPage.dart';
import 'package:imran_app/screens_app/registerPage.dart';

class splashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginFormState();
  }
}

class _LoginFormState extends State<splashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        margin: const EdgeInsets.only(
          left: 24.0,
          right: 24.0,
          top: 220.0,
        ),
        child: Center(
          child: ListView(
            children: <Widget>[
              LogInButton(),
              SignInButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class SignInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      width: 250.0,
      height: 50.0,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(
          "REGISTER",
          style: TextStyle(
              fontSize: 25.0,
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontFamily: 'Raleway',
              letterSpacing: 2),
        ),
        elevation: 6.0,
        onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder: (context)=>registerPage())
                 );
        },
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.black)),
      ),
    );
  }
}

class LogInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      width: 250.0,
      height: 50.0,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(
          "LOGIN",
          style: TextStyle(
              fontSize: 25.0,
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontFamily: 'Raleway',
              letterSpacing: 2),
        ),
        elevation: 6.0,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => loginPage()));
        },
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.black)),
      ),
    );
  }
}
