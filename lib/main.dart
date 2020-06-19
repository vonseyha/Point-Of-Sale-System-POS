import 'package:flutter/material.dart';
import 'package:pos_app/add_product.dart';
import 'package:pos_app/login.dart';
import 'package:pos_app/welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login',
      debugShowCheckedModeBanner: false,
      home:  Addproduct(),
    );
  }
}