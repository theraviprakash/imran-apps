import 'package:flutter/material.dart';
import 'package:imran_app/screens_app/splashPage.dart';
import 'package:imran_app/screens_app/MyHomePage.dart';

class registerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginFormState();
  }
}

class _LoginFormState extends State<registerPage> {
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
        title: Text("REGISTER"),
      ),
      body: Container(
        margin: const EdgeInsets.only(
          left: 24.0,
          right: 24.0,
          top: 80.0,
          bottom: 80.0,
        ),
        child: Center(
          child: Card(
            child: ListView(
              children: <Widget>[
                Divider(
                  color: Colors.white,
                ),
                bodyArea(),
                registerButtonAdd(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget bodyArea() {
    return Center(
      child: new Container(
        width: 200.0,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                hintText: "Designation",
                labelText: "Designation",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0))),
          ),
          Divider(
            color: Colors.white,
          ),
          TextField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                hintText: "Name",
                labelText: "Name",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0))),
          ),
          Divider(
            color: Colors.white,
          ),
          TextField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                hintText: "EmpID",
                labelText: "EmpID",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0))),
          ),
          Divider(
            color: Colors.white,
          ),
          TextField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                hintText: "Email",
                labelText: "Email",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0))),
          ),
          Divider(
            color: Colors.white,
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                hintText: "Password",
                labelText: "Password",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0))),
          ),
        ]),
      ),
    );
  }
  Widget registerButtonAdd() {
    return Center(
      child: new Container(
        width: 200.0,
        height: 100.0,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          RaisedButton(
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
