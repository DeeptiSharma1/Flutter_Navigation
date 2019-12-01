import 'package:flutter/material.dart';
import 'package:route_nav_app/screen1.dart';
import 'package:route_nav_app/screen2.dart';
import 'package:route_nav_app/screen3.dart';

import 'home_screen.dart';

class Screen1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Screen1_state();
  }


}

class Screen1_state extends State<Screen1>
{
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(
        title: Text(" Screen 1"),
      backgroundColor: Colors.red,)

      ,
      body: Center(

        //bottomNavigationBar: Navbar(),
        child: Column(

          children: <Widget>[

            Text('We are in Screen 1'),
            RaisedButton(
              child: new Text('Click for Screen 2'),
              color: Colors.red,
              onPressed: (){
                // Case 1: Navigation wit material page
               Navigator.push(
                    context, new MaterialPageRoute(builder: (context) => Screen2()));

                //Case2 : Navigating with PushedNme
               // Navigator.of(context).pushNamed('/screen2');

              },
            ),
            RaisedButton(
              child: new Text('Click for Screen 3'),
              color: Colors.blue,
              onPressed: (){
                 // Navigation wit material page
                /*Navigator.push(
                    context, new MaterialPageRoute(builder: (context) => Screen3())); */

                //Case2 : Navigating with PushedNme
               Navigator.of(context).pushNamed('/screen3');



              },

            ),
            RaisedButton(
              child: new Text('Click for Screen 1'),
              color: Colors.green,
              onPressed: (){
                //// Navigation wit material page
              /*  Navigator.push(
                    context, new MaterialPageRoute(builder: (context) => Screen1())); */

                //Case2 : Navigating with PushedNme
                Navigator.of(context).pushNamed('/screen1');

                //case 7 push and replace the name
               // Navigator.pushReplacementNamed(context, '/screen1');

                // case 8 push name and pop untill
               // Navigator.pushNamedAndRemoveUntil(context,'/screen1', ModalRoute.withName('/'));
              },
            ),
            RaisedButton(
              child: new Text('Pop  Screen 1'),
              color: Colors.green,
              onPressed: (){
                //// Navigation wit material page
                /*Navigator.push(
                    context, new MaterialPageRoute(builder: (context) => Screen1())); */

                //Case3  : Poping screen
               // Navigator.pop(context);
                // Case 4 can Pop

                // Case 5 pop untill

                Navigator.popUntil(context,ModalRoute.withName('/screen2'));

                // Case 6 pop and push screen
               // Navigator.popAndPushNamed(context, '/screen3');

              },
            ),
            RaisedButton(
              child: new Text('Click for Navigation with Data'),
              color: Colors.red,
              onPressed: (){
                // Pushing a route directly, WITHOUT using a named route
                Navigator.of(context).push(
                  // With MaterialPageRoute, you can pass data between pages,
                  // but if you have a more complex app, you will quickly get lost.
                  MaterialPageRoute(
                    builder: (context) =>
                        HomeScreen("Hello User"),
                  ),
                );

              },
            ),
          ],
        ),
      ),
    );;
  }

}




