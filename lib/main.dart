import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          title: Icon(Icons.home),
//          title: Text("Hello Flutter App"),
        ),
        body: Text("HELLO FLUTTER"),
        floatingActionButton: FloatingActionButton(
//          child: Text("DO IT"),
          backgroundColor: Colors.orangeAccent,
          child: Icon(Icons.add_a_photo),
          onPressed: () => print("Floating Action Button Pressed....!!!"),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 70.0,
//          child: Text("Rock Bottom"),
            child: Row(
              children: <Widget>[
                Text("Rock Bottom->   "),
                Icon(Icons.home),
                IconButton(
                  icon: Icon(Icons.add_box),
                  onPressed: () =>
                      print("ICON BUTTON IN BOTTOMAPPBAR PRESSED....!!!"),
                ),
                Text("The Rock ->   "),
                Text("Sohan ->   ")
              ],
            ),
          ),
          color: Colors.orangeAccent,
        ),
        persistentFooterButtons: <Widget>[
          IconButton(
            icon: Icon(Icons.account_box),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: null,
          )
        ],
        backgroundColor: Colors.grey,
      ),
    );
  }
}
