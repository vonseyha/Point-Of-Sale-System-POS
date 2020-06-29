import 'package:flutter/material.dart';
import 'package:pos_app/add_product.dart';
import 'package:pos_app/login.dart';
import 'package:pos_app/report.dart';
import 'package:pos_app/stockManagement/categoryInfo/view_category.dart';
import 'file:///D:/NIPTICT/Year_II/Term6/Project%20-I/POS%20System/Point-Of-Sale-System-POS/lib/stockManagement/employerInfo/add_staff.dart';
import 'package:pos_app/update_product.dart';
import 'package:pos_app/welcome.dart';

import 'cashier_Profie_detail.dart';
import 'dashbaord.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login',
      debugShowCheckedModeBanner: false,
      home: ViewCategory(),
    );
  }
}