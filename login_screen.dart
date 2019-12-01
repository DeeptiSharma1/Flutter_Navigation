import 'package:flutter/material.dart';
import 'package:route_nav_app/product_screen.dart';

import 'home_screen.dart';
import 'logout_screen.dart';
import 'nodelist_screen.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: LoginScreen(),
        routes: {
          'login_screen': (context) => LoginScreen(),
          //'home_screen': (context) => HomeScreen(),
          'product_screen': (context) => NoteList(),
          'logout_screen': (context) => LogoutScreen(),

        });
  }
}

class LoginScreen extends StatelessWidget {
  static const String id = 'welcome_screen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Login Screen"),)
        ,
        body: Center(
          //bottomNavigationBar: Navbar(),
          child:Column(
            children: <Widget>[
              RaisedButton(
                  child: new Text('Login '),
                  onPressed: (){
                    Navigator.push(
                        context, new MaterialPageRoute(builder: (context) => HomeScreen("test")));
                  },
              ),
              RaisedButton(
                  child: new Text('Back'),
                  onPressed: (){
                    Navigator.of(context).pop(true);

                  },
              ),

            ],
          ),

        ),
      ),
    );
  }
}