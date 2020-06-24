import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Report extends StatefulWidget {
  Report() : super();
  @override
  _Productreport createState() => _Productreport();
}

class _Productreport extends State<Report>{

  String _name = "Von Seyha";
  String _productName = "Cooked Fasta With Green";
  String _productDate = "10-10-2020";
  String _productTitle = "Your Report";
  int _productNumber = 2 ;
  int _productPrice = 10;
  int _productDiscountPrice = 10;
  int _productSubtotalPrice = 20;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
          child: Container(
            width: 420.0,
            height: 700.0,
            decoration: BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Container(
                  width:300,
                  height:70,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:AssetImage("images/reportlogo.png"),
                    ),
                  ),
                ),
                Container(
                  child: new Text(
                    _productTitle,
                    style: new TextStyle(
                      fontFamily: 'RobotoMono',
                      fontSize: 25.0,
                      color:Colors.black
                    ),
                  ),
                ),

                Container(
                  child: new Text(
                    _name,
                    style: new TextStyle(
                        fontFamily: 'RobotoMono',
                        fontSize: 22.0,
                        color:Colors.black
                    ),
                  ),
                ),

                Container(
                  child: new Text(
                    _productDate,
                    style: new TextStyle(
                        fontFamily: 'RobotoMono',
                        fontSize: 22.0,
                        color:Colors.black
                    ),
                  ),
                ),

                Container(
                  padding:EdgeInsets.symmetric(horizontal:10.0),
                  margin: const EdgeInsets.only(top:10),
                  child:Container(
                    height:1.5,
                    color:(Colors.black),
                  )
                ),

                Container(
                  child: Row(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                child: new Text(
                                  _productName,
                                  style: new TextStyle(
                                      fontSize: 18.0,
                                      fontFamily: 'RobotoMono',
                                      color: Colors.black
                                  ),
                                ),
                              ),

                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
      ),
    );
  }
}