import 'package:flutter/material.dart';
import 'package:route_nav_app/screen1.dart';
import 'package:route_nav_app/screen3.dart';

class Screen2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Screen2_state();
  }


}

class Screen2_state extends State<Screen2>
{

  // This is a String for the sake of an example.
  // You can use any type you want.


  @override
  Widget build(BuildContext context) {

    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(" Screen 2"),
          backgroundColor: Colors.green,)

        ,
        body: Center(

          //bottomNavigationBar: Navbar(),
          child: Column(

            children: <Widget>[

              Text('We are in Screen 2'),
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
                child: new Text('Click for Screen 3'),
                color: Colors.blue,
                onPressed: (){
                  // Passing data to next screen
                  Navigator.push(
                      context, new MaterialPageRoute(builder: (context) => Screen3()));



                },

              ),
              RaisedButton(
                child: new Text('Click for Screen 2'),
                color: Colors.green,
                onPressed: (){
                  // Passing data to next screen
                  Navigator.push(
                      context, new MaterialPageRoute(builder: (context) => Screen2()));

                },
              ),
            ],
          ),
        ),
      ),
    );;
  }

}




