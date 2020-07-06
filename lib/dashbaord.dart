import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pos_app/report.dart';
import 'package:pos_app/stockManagement/categoryInfo/view_category.dart';
import 'package:pos_app/stockManagement/customerInfo/view_customer.dart';
import 'package:pos_app/stockManagement/employerInfo/view_employee.dart';
import 'package:pos_app/stockManagement/productInfo/view_product.dart';
import 'package:pos_app/stockManagement/reportInfo/view_report.dart';
import 'package:pos_app/stockManagement/supplierInfo/view_supplier.dart';
import 'package:pos_app/update_product.dart';
import 'package:pos_app/welcome.dart';

import 'cashier_Profie_detail.dart';
import 'login.dart';

class Dashbaord extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<Dashbaord>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  int active = 0;
  @override
  void initState() {
    super.initState();
    tabController = new TabController(vsync: this, length:5 , initialIndex: 0)
      ..addListener(() {
        setState(() {
          active = tabController.index;
        });
      });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading:
        MediaQuery.of(context).size.width < 1300 ? true : false,
        title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 12),
                child: Text(
                  "POSCAMBO Dashbaord",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'HelveticaNeue',
                  ),
                ),
              ),
            ]),
        actions: <Widget>[
          Row(
            children: [
              Container(
                child: new Text('Logout',style: new TextStyle(fontSize: 20.0),),
              ),
              Container(
                child: IconButton(
                  padding: EdgeInsets.all(0),
                  icon: Icon(Icons.exit_to_app),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Welcome()));
                  },
                ),
              ),
              SizedBox(width: 32),
            ],
          )
        ],
        backgroundColor: Colors.blueAccent,
        // automaticallyImplyLeading: false,
      ),
      body: Row(
        children: <Widget>[
          MediaQuery.of(context).size.width < 1300
              ? Container()
              : Card(
            elevation: 2.0,
            child: Container(
                margin: EdgeInsets.all(0),
                height: MediaQuery.of(context).size.height,
                width: 300,
                color: Colors.white,
                child: listDrawerItems(false)),
          ),
          Container(

            width: MediaQuery.of(context).size.width < 1300
                ? MediaQuery.of(context).size.width
                : MediaQuery.of(context).size.width - 310,

            child: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              controller: tabController,
              children: [
                ViewEmployee(),
                ViewSuplier(),
                ViewProduct(),
                ViewCategory(),
                ViewReport(),
              ],
            ),
          )
        ],
      ),
      drawer: Padding(
          padding: EdgeInsets.only(top: 80),
          child: Drawer(child: listDrawerItems(true))),
    );
  }

  Widget listDrawerItems(bool drawerStatus) {
    return ListView(
      children: <Widget>[
        FlatButton(
          color: tabController.index == 0 ? Colors.grey[100] : Colors.white,
          //color: Colors.grey[100],
          onPressed: () {
            tabController.animateTo(0);
            drawerStatus ? Navigator.pop(context) : print("");
          },
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.only(top: 22, bottom: 22, right: 22),
              child: Row(children: [
                Icon(Icons.dashboard,color: Colors.blueAccent),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Employee",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'HelveticaNeue',
                  ),
                ),
              ]),
            ),
          ),
        ),
        FlatButton(
          color: tabController.index == 1 ? Colors.grey[100] : Colors.white,
          onPressed: () {
            tabController.animateTo(1);
            drawerStatus ? Navigator.pop(context) : print("");
          },
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.only(top: 22, bottom: 22, right: 22),
              child: Row(children: [
                Icon(Icons.category,color: Colors.blueAccent),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Supplier",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'HelveticaNeue',
                  ),
                ),
              ]),
            ),
          ),
        ),
        FlatButton(
          color: tabController.index == 2 ? Colors.grey[100] : Colors.white,
          //color: Colors.grey[100],
          onPressed: () {
            tabController.animateTo(2);
            drawerStatus ? Navigator.pop(context) : print("");
          },
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.only(top: 22, bottom: 22, right: 22),
              child: Row(children: [
                Icon(Icons.assignment,color: Colors.blueAccent),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Product",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'HelveticaNeue',
                  ),
                ),
              ]),
            ),
          ),
        ),
        FlatButton(
          color: tabController.index == 3 ? Colors.grey[100] : Colors.white,
          //color: Colors.grey[100],
          onPressed: () {
            tabController.animateTo(3);
            drawerStatus ? Navigator.pop(context) : print("");
          },
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.only(top: 22, bottom: 22, right: 22),
              child: Row(children: [
                Icon(Icons.category,color: Colors.blueAccent),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'HelveticaNeue',
                  ),
                ),
              ]),
            ),
          ),
        ),
        FlatButton(
          color: tabController.index == 4 ? Colors.grey[100] : Colors.white,
          //color: Colors.grey[100],
          onPressed: () {
            tabController.animateTo(4);
            drawerStatus ? Navigator.pop(context) : print("");
          },
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.only(top: 22, bottom: 22, right: 22),
              child: Row(children: [
                Icon(Icons.receipt,color: Colors.blueAccent),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Daily Report",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'HelveticaNeue',
                  ),
                ),
              ]),
            ),
          ),
        ),
      ],
    );
  }
}