import 'package:flutter/material.dart';
import './app_screens/home.dart';
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,      
      title: "Exploring UI widgets",
      //home: Home(),
      home: Scaffold(
        appBar: AppBar(title: Text("Basic List View"),),
        body: getListView(),
      ),
    ));
}

Widget getListView(){
  var listView = ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape Sample"),
        subtitle: Text("Beautiful View!"),
        trailing: Icon(Icons.wb_sunny),
        onTap:(){
          debugPrint("You tap something");
        }
      ),

      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape tow"),
        subtitle: Text("Beautiful View!"),
        trailing: Icon(Icons.wb_sunny),
      ),

      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape"),
        subtitle: Text("Beautiful View!"),
        trailing: Icon(Icons.wb_sunny),
      ),

      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape"),        
      ),

      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape"),        
      ),

    ],
  );

  return listView;
}