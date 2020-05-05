import 'package:flutter/material.dart';
import 'package:imran_app/screens_app/splashPage.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',debugShowCheckedModeBanner: false,
      home: splashPage(),
    );
  }
}

