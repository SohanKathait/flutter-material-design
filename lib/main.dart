import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home:FirstRoute(),

    );
  }
}


class FirstRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Icon(Icons.home),
//          title: Text("Hello Flutter App"),
      ),
      body: Center(
          child:RaisedButton(
            child: Text('Open Route'),
            onPressed: (){
              //navigate to second route when pressed.
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context)=>SecondRoute()),
              );
            },
          )
      ),
      floatingActionButton: FloatingActionButton(
//          child: Text("DO IT"),
        backgroundColor: Colors.orangeAccent,
        child: Icon(Icons.add_a_photo),
        onPressed: () => FirstRoute(),
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
    );
  }
}

class SecondRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
          child:RaisedButton(
            child: Text('Go back'),
            onPressed: (){
              Navigator.pop(context);
              //navigate to second route when pressed.
            },
          )
      ),
    );
  }
}

