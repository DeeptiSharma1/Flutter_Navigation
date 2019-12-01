
import 'package:flutter/material.dart';
import 'package:route_nav_app/product_screen.dart';

import 'nodelist_screen.dart';


class HomeScreen extends StatelessWidget {
   String id ="Home screeen";
  HomeScreen(String data)
  {
    id=data;
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),)
      ,
      body: Center(
        //bottomNavigationBar: Navbar(),
        child: Column(
          children: <Widget>[
            Text('Welcome'),
            RaisedButton(
              child: new Text(id),
              onPressed: (){
                // Passing data to next screen
             Navigator.push(
               context, new MaterialPageRoute(builder: (context) => NoteList()));

              },
            ),
          ],
        ),
      ),
    );
  }
}