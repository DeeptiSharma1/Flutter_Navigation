import 'package:flutter/material.dart';
import 'package:route_nav_app/screen1.dart';
import 'package:route_nav_app/screen2.dart';
import 'package:route_nav_app/screen3.dart';

import 'home_screen.dart';
import 'login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Demo',
        // Case Intial route
       // initialRoute: '/',
      home: Screen1(),
      routes: {
       // '/':(context)=>Screen1(),
          '/screen1': (context) => Screen1(),
          '/screen2': (context) => Screen2(),
          '/screen3': (context) => Screen3(),


        }
    );
  }
}
