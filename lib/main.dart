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
        body: getListView1(),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            debugPrint("FAB Clicked!");
          },
          child: Icon(Icons.add),
          tooltip: 'Add One More Item',
        )
      ),
    ));
}

void showSnackBar(BuildContext context, String item){
  var snackBar = SnackBar(
    content: Text("You just tapped $item"),
    action: SnackBarAction(
      label:"UNDO", 
      onPressed: () {
        debugPrint("Performing dummy undo Operation");
      },
    )
  );

  Scaffold.of(context).showSnackBar(snackBar);
}

List<String> getListElements(){
  var items = List<String>.generate(1000, (counter) => "Item $counter");
  return items;
}

Widget getListView1(){
  var listItems = getListElements();
  var listView = ListView.builder(
    itemBuilder: (context, index) {
      return ListTile(
        leading: Icon(Icons.arrow_right),
        title: Text(listItems[index]),
        onTap: (){
          showSnackBar(context, listItems[index]);
        },
      );
    }
  );
  return listView;
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
        title: Text("Landscape Tow"),        
      ),

    ],
  );

  return listView;
}