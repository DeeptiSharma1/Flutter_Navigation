import 'package:flutter/material.dart';
import 'package:route_nav_app/screen1.dart';
import 'package:route_nav_app/screen2.dart';

class Screen3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Screen3_state();
  }


}

class Screen3_state extends State<Screen3>
{
  @override
  Widget build(BuildContext context) {

    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(" Screen 3"),
          backgroundColor: Colors.blueGrey,)

        ,
        body: Center(

          //bottomNavigationBar: Navbar(),
          child: Column(

            children: <Widget>[

              Text('We are in Screen 3'),
              RaisedButton(
                child: new Text('Click for Screen 1'),
                color: Colors.red,
                onPressed: (){
                  // Passing data to next screen
                  Navigator.push(
                      context, new MaterialPageRoute(builder: (context) => Screen1()));

                },
              ),
              RaisedButton(
                child: new Text('Click for Screen 2'),
                color: Colors.blue,
                onPressed: (){
                  // Passing data to next screen
                  Navigator.push(
                      context, new MaterialPageRoute(builder: (context) => Screen2()));

                },

              ),
              RaisedButton(
                child: new Text('Click for Screen 3'),
                color: Colors.green,
                onPressed: (){
                  // Passing data to next screen
                  Navigator.push(
                      context, new MaterialPageRoute(builder: (context) => Screen3()));

                },
              ),
            ],
          ),
        ),
      ),
    );;
  }

}




