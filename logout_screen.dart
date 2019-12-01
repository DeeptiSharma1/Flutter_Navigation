import 'package:flutter/material.dart';


class LogoutScreen extends StatelessWidget {
  static const String id = 'welcome_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Log Out Screen"),
        leading: IconButton(icon: Icon(
            Icons.arrow_back),
            onPressed: () {

          // Write logic to call only Login screen here
              Navigator.pop(context);
        }
        ),
      ),

    );
  }


}