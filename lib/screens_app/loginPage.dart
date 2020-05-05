import 'package:flutter/material.dart';
import 'package:imran_app/screens_app/splashPage.dart';
import 'package:imran_app/screens_app/MyHomePage.dart';


class loginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginFormState();
  }
}

class _LoginFormState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white), onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => splashPage()));
        },),
        title: Text("LOGIN"),
      ),
      body: Container(
        margin: const EdgeInsets.only(
          left: 24.0,
          right: 24.0,
          top: 80.0,
          bottom: 160.0,
        ),
        child: Center(
          child: Container(
            height: 300.0,
            color: Colors.white,
            child: ListView(
              children: <Widget>[
                Divider(
                  color: Colors.white,
                ),
                emailAddress(),

                passwordAddress(),
                Divider(
                  color: Colors.white,
                ),
                loginButtonAdd(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget emailAddress() {
    return Center(
      child: new Container(
        width: 200.0,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          //final emailField =
          TextField(

            decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                hintText: "Email",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0))),
          ),
        ]),
      ),
    );
  }
  Widget passwordAddress() {
    return Center(
      child: new Container(
        width: 200.0,
        height: 100.0,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextField(
            obscureText: true,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                hintText: "Password",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0))),
          ),
        ]),
      ),
    );
  }
  Widget loginButtonAdd() {
    return Center(
      child: new Container(
        width: 200.0,
        height: 100.0,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          RaisedButton(
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
                  context, MaterialPageRoute(builder: (context) => MyHomePage()));
            },
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.black)),
          ),
        ]),
      ),
    );
  }
}
