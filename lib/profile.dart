import 'package:flutter/material.dart';

class Profile extends StatefulWidget{
  @override
  _ProfileScreen createState() => _ProfileScreen();
}

class _ProfileScreen extends State<Profile>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
      return Scaffold(
        body: Container(
          child: Text('Hello Profile'),
        ),
      );
  }
}