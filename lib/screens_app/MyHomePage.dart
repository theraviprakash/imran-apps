import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imran_app/screens_app/ChatHomePage.dart';


class MyHomePage extends StatefulWidget {
  @override
  _HomeMainState createState() => _HomeMainState();
}
class _HomeMainState extends State<MyHomePage> {
  int _currentIndex = 0;
  _onTapped(int index) {
    setState(() {
      _currentIndex = index;
      if(_currentIndex==3){
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ChatHomePage()));
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    List<Widget> _screens = [
      bodyField(),
      Center(child: Text("Cart")),
      Center(child: Text("Account")),
      Center(child: Text("Account")),
      //ChatHomePage(),

    ];
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("HOME"),
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: bottomField(),
    );
  }

  Widget bottomField() {
    return BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.blue,
        onTap: _onTapped,
        items: [
          BottomNavigationBarItem(title: Text("Home"), icon: Icon(Icons.home)),
          BottomNavigationBarItem(title: Text("Task"), icon: Icon(Icons.work)),
          BottomNavigationBarItem(title: Text("Meeting"), icon: Icon(Icons.group_work)),
          BottomNavigationBarItem(title: Text("Chat"), icon: Icon(Icons.chat)),
        ]);
  }
  Widget bodyField(){
    return ListView(
      padding: const EdgeInsets.all(10),
      children: <Widget>[
        new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text("UPCOMING MEETING",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 18.0,letterSpacing: 2.0),),
              ],
            ),
          ],
        ),
        Container(
          height: 235.0,
          child:userLocationDetails(),
        ),
        Divider(
          color: Colors.white,
        ),
        new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text("UPCOMING EVENTS",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 18.0,letterSpacing: 2.0),),
              ],
            ),
          ],
        ),
        Container(
          height: 235.0,
          child:userLocationDetails(),
        ),
      ],
    );
  }

  Widget userLocationDetails(){
    return Card(
      child:new Column(
        children: <Widget>[
          RaisedButton(
            onPressed: () {

            },
            color: Colors.white,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "firstname",
                    style: TextStyle(color: Colors.black),
                  ),
                  VerticalDivider(
                    color: Colors.grey,
                  ),
                  Text(
                    "secondname",
                    style: TextStyle(color: Colors.black),
                  ),
                  VerticalDivider(
                    color: Colors.grey,
                  ),
                  FlatButton(
                    onPressed: () => {},
                    color: Colors.black54,
                    padding: EdgeInsets.all(5.0),
                    child: Column( // Replace with a Row for horizontal icon + text
                      children: <Widget>[
                        Text("Edit",style:TextStyle(color:Colors.white,fontSize: 16.0,fontWeight: FontWeight.bold,letterSpacing: 1.0),)
                      ],
                    ),
                  ),
                  //  IconButton(icon: Text("EDIT",style:TextStyle(color:Colors.black)), onPressed: null),
                  VerticalDivider(
                    color: Colors.grey,
                  ),

                ],
              ),
            ),

          ),
        ],
      ),
    );
  }
//
//  Widget ChatWorks(){
//    return Scaffold(
//      body: ,
//    );
//  }
}
