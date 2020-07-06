import 'package:flutter/material.dart';

class ViewCustomer extends StatefulWidget{
  ViewCustomer() : super();
  _ViewCustomerScreen createState() => _ViewCustomerScreen();
}

class _ViewCustomerScreen extends State<ViewCustomer>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:Container(
        child: Text('Hello World!')
      ),
    );
  }

}