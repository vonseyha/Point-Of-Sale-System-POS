import 'package:flutter/material.dart';

class  ViewReport extends StatefulWidget{
  ViewReport() : super();
  _ViewReportScreen createState() => _ViewReportScreen();
}

class _ViewReportScreen extends State<ViewReport>{

  var _productSearch;
  final productSearch = new TextEditingController();
  String _name = "Von Seyha";
  String _productName = "Cooked Fasta With Green";
  String _productDate = "10-10-2020";
  String _productTitle = "Your Report";
  int _productNumber = 2 ;
  String _productPrice = "10.00";
  int _productDiscountPrice = 10;
  int _productSubtotalPrice = 20;


  _displayDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
            ),
            content: Container(
              width: double.maxFinite,
              child: ListView(
                children: [
                  Container(
                    height: 800.0,
                    width: 500.0,
                    child: Container(
                      padding: const EdgeInsets.all(50.0),
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
                                  fontSize: 18.0,
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
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20,top: 10),
                              child: Row(
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          child: new Text(
                                            _productName,
                                            style: new TextStyle(
                                                fontSize: 18.0,
                                                fontFamily: 'RobotoMono',
                                                color: Colors.black
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: new Text(
                                            '2 x 2.00',
                                            style: new TextStyle(
                                                fontSize: 15.0,
                                                fontFamily: 'RobotoMono',
                                                color: Colors.black
                                            ),
                                          ),

                                        )
                                      ],
                                    ),
                                  ),

                                  Container(
                                    margin: const EdgeInsets.only(left: 120.0),
                                    child: new Text(
                                      '10.00',
                                      style: new TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          //new Column in Column extends row
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20,top: 10),
                              child: Row(
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          child: new Text(
                                            _productName,
                                            style: new TextStyle(
                                                fontSize: 18.0,
                                                fontFamily: 'RobotoMono',
                                                color: Colors.black
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: new Text(
                                            '2 x 2.00',
                                            style: new TextStyle(
                                                fontSize: 15.0,
                                                fontFamily: 'RobotoMono',
                                                color: Colors.black
                                            ),
                                          ),

                                        )
                                      ],
                                    ),
                                  ),

                                  Container(
                                    margin: const EdgeInsets.only(left: 120.0),
                                    child: new Text(
                                      '10.00',
                                      style: new TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),

                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20,top: 10),
                              child: Row(
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          child: new Text(
                                            _productName,
                                            style: new TextStyle(
                                                fontSize: 18.0,
                                                fontFamily: 'RobotoMono',
                                                color: Colors.black
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: new Text(
                                            '2 x 2.00',
                                            style: new TextStyle(
                                                fontSize: 15.0,
                                                fontFamily: 'RobotoMono',
                                                color: Colors.black
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),

                                  Container(
                                    margin: const EdgeInsets.only(left: 120.0),
                                    child: new Text(
                                      '10.00',
                                      style: new TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          //new Column in Column extends row
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20,top: 10),
                              child: Row(
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          child: new Text(
                                            _productName,
                                            style: new TextStyle(
                                                fontSize: 18.0,
                                                fontFamily: 'RobotoMono',
                                                color: Colors.black
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: new Text(
                                            '2 x 2.00',
                                            style: new TextStyle(
                                                fontSize: 15.0,
                                                fontFamily: 'RobotoMono',
                                                color: Colors.black
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),

                                  Container(
                                    margin: const EdgeInsets.only(left: 120.0),
                                    child: new Text(
                                      '10.00',
                                      style: new TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),

                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20,top: 10),
                              child: Row(
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          child: new Text(
                                            _productName,
                                            style: new TextStyle(
                                                fontSize: 18.0,
                                                fontFamily: 'RobotoMono',
                                                color: Colors.black
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: new Text(
                                            '2 x 2.00',
                                            style: new TextStyle(
                                                fontSize: 15.0,
                                                fontFamily: 'RobotoMono',
                                                color: Colors.black
                                            ),
                                          ),

                                        )
                                      ],
                                    ),
                                  ),

                                  Container(
                                    margin: const EdgeInsets.only(left: 120.0),
                                    child: new Text(
                                      '10.00',
                                      style: new TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          //new Column in Column extends row
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20,top: 10),
                              child: Row(
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          child: new Text(
                                            _productName,
                                            style: new TextStyle(
                                                fontSize: 18.0,
                                                fontFamily: 'RobotoMono',
                                                color: Colors.black
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: new Text(
                                            '2 x 2.00',
                                            style: new TextStyle(
                                                fontSize: 15.0,
                                                fontFamily: 'RobotoMono',
                                                color: Colors.black
                                            ),
                                          ),

                                        )
                                      ],
                                    ),
                                  ),

                                  Container(
                                    margin: const EdgeInsets.only(left: 120.0),
                                    child: new Text(
                                      '10.00',
                                      style: new TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),

                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20,top: 10),
                              child: Row(
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          child: new Text(
                                            _productName,
                                            style: new TextStyle(
                                                fontSize: 18.0,
                                                fontFamily: 'RobotoMono',
                                                color: Colors.black
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: new Text(
                                            '2 x 2.00',
                                            style: new TextStyle(
                                                fontSize: 15.0,
                                                fontFamily: 'RobotoMono',
                                                color: Colors.black
                                            ),
                                          ),

                                        )
                                      ],
                                    ),
                                  ),

                                  Container(
                                    margin: const EdgeInsets.only(left: 120.0),
                                    child: new Text(
                                      '10.00',
                                      style: new TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          //new Column in Column for make line
                          Container(
                              padding:EdgeInsets.symmetric(horizontal:10.0),
                              margin: const EdgeInsets.only(top:10),
                              child:Container(
                                height:1.5,
                                color:(Colors.black),
                              )
                          ),
                          //column discount
                          Container(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Container(
                                    child: new Text(
                                      'Ticket Discount',
                                      style: new TextStyle(
                                          fontSize: 20.0,
                                          fontFamily: 'RobotoMono',
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 180.0),
                                  child: new Text(
                                    '20%',
                                    style: new TextStyle(
                                        fontSize: 20.0,
                                        fontFamily: 'RobotoMono',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          //column subtotal
                          Container(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Container(
                                    child: new Text(
                                      'Subtotal',
                                      style: new TextStyle(
                                          fontSize: 20.0,
                                          fontFamily: 'RobotoMono',
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 240.0),
                                  child: new Text(
                                    '1200.0',
                                    style: new TextStyle(
                                        fontSize: 20.0,
                                        fontFamily: 'RobotoMono',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),

                          //new Column in Column for make line
                          Container(
                              padding:EdgeInsets.symmetric(horizontal:10.0),
                              margin: const EdgeInsets.only(top:10),
                              child:Container(
                                height:1.5,
                                color:(Colors.black),
                              )
                          ),

                          //column Total
                          Container(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Container(
                                    child: new Text(
                                      'Total',
                                      style: new TextStyle(
                                          fontSize: 30.0,
                                          fontFamily: 'RobotoMono',
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 200.0),
                                  child: new Text(
                                    '1200.0',
                                    style: new TextStyle(
                                        fontSize: 30.0,
                                        fontFamily: 'RobotoMono',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: new Text(
                              'Thank you for your purchase ',
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),

            ),


            actions: <Widget>[
              new FlatButton(
                child: new Text('concel',style: new TextStyle(fontSize: 17.0,color:Colors.white),),
                color: Colors.lightBlueAccent,
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),

            ],

          );
        });
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 800.0,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 70.0,
                    width: 1600.0,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0,left: 20.0),
                      child: new Text(
                        'Dashbaord / All Report',
                        style: new TextStyle(
                          fontFamily: 'RobotoMono',
                          fontSize: 25.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.circular(5),
                    ),

                  ),

                  Container(
                    margin: const EdgeInsets.only(top: 15.0),
                    height: 70.0,
                    width: 1238.0,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: new Text(
                            'REPORT LIST',
                            style: new TextStyle(
                              fontFamily: 'RobotoMono',
                              fontSize: 30.0,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.only(top:15.0,right: 900.0),
                    width: 350.0,
                    height: 50.0,
                    child: TextField(
                      controller: _productSearch,
                      decoration: InputDecoration(
                          labelText: "Search",
                          hintText: "Search",
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          )
                      ),
                    ),
                  ),

                  Container(
                      child:Column(
                        children: [
                          SizedBox(
                            height: 500,
                            child: ListView(
                              children: [
                                DataTable(
                                  columns: [
                                    DataColumn(label: new Text(
                                      'No',
                                      style: new TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.red,
                                      ),
                                    )),
                                    DataColumn(label: new Text(
                                      'Name',
                                      style: new TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.black,
                                      ),
                                    )
                                    ),
                                    DataColumn(
                                        label: new Text(
                                          'Total Amount',
                                          style: new TextStyle(
                                            fontSize: 18.0,
                                            color: Colors.black,
                                          ),
                                        )
                                    ),

                                    DataColumn(
                                        label: new Text(
                                          'Date',
                                          style: new TextStyle(
                                            fontSize: 18.0,
                                            color: Colors.black,
                                          ),
                                        )
                                    ),

                                    DataColumn(
                                        label: new Text(
                                          'Action',
                                          style: new TextStyle(
                                            fontSize: 18.0,
                                            color: Colors.black,
                                          ),
                                        )
                                    ),
                                  ],

                                  rows: [
                                    DataRow(cells: [
                                      DataCell(new Text(
                                        '1',
                                        style: new TextStyle(
                                          fontSize: 15,
                                          color:Colors.red,
                                        ),
                                      )),
                                      DataCell( new Text(
                                        'Von Seyha',
                                        style: new TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.black,
                                        ),
                                      )),
                                      DataCell( new Text(
                                        '150000',
                                        style: new TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.black,
                                        ),
                                      )),

                                      DataCell( new Text(
                                        '15-07-2020',
                                        style: new TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.black,
                                        ),
                                      )),
                                      DataCell(
                                          Container(
                                            child: Row(
                                              children: [
                                                Container(
                                                  padding: const EdgeInsets.only(bottom: 2.0 ,left: 10.0),
                                                  width: 85.0,
                                                  height: 35.0,
                                                  child: new RaisedButton(
                                                    child: new Text(
                                                        "view",
                                                        style: new TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 15.0,
                                                          fontFamily: 'RobotoMono',
                                                        )
                                                    ),
                                                    colorBrightness: Brightness.light,
                                                    onPressed: () {
                                                      //push to new page
                                                    },
                                                    color: Colors.greenAccent,
                                                    shape:  RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(5.0),
                                                    ),
                                                  ),
                                                ),

                                              ],
                                            ),

                                          )
                                      ),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(new Text(
                                        '1',
                                        style: new TextStyle(
                                          fontSize: 15,
                                          color:Colors.red,
                                        ),
                                      )),
                                      DataCell( new Text(
                                        'Von Seyha',
                                        style: new TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.black,
                                        ),
                                      )),
                                      DataCell( new Text(
                                        '150000',
                                        style: new TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.black,
                                        ),
                                      )),

                                      DataCell( new Text(
                                        '15-07-2020',
                                        style: new TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.black,
                                        ),
                                      )),
                                      DataCell(
                                          Container(
                                            child: Row(
                                              children: [
                                                Container(
                                                  padding: const EdgeInsets.only(bottom: 2.0 ,left: 10.0),
                                                  width: 85.0,
                                                  height: 35.0,
                                                  child: new RaisedButton(
                                                    child: new Text(
                                                        "view",
                                                        style: new TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 15.0,
                                                          fontFamily: 'RobotoMono',
                                                        )
                                                    ),
                                                    colorBrightness: Brightness.light,
                                                    onPressed: () {
                                                      //push to new page
                                                    },
                                                    color: Colors.greenAccent,
                                                    shape:  RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(5.0),
                                                    ),
                                                  ),
                                                ),

                                              ],
                                            ),

                                          )
                                      ),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(new Text(
                                        '1',
                                        style: new TextStyle(
                                          fontSize: 15,
                                          color:Colors.red,
                                        ),
                                      )),
                                      DataCell( new Text(
                                        'Von Seyha',
                                        style: new TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.black,
                                        ),
                                      )),
                                      DataCell( new Text(
                                        '150000',
                                        style: new TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.black,
                                        ),
                                      )),

                                      DataCell( new Text(
                                        '15-07-2020',
                                        style: new TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.black,
                                        ),
                                      )),
                                      DataCell(
                                          Container(
                                            child: Row(
                                              children: [
                                                Container(
                                                  padding: const EdgeInsets.only(bottom: 2.0 ,left: 10.0),
                                                  width: 85.0,
                                                  height: 35.0,
                                                  child: new RaisedButton(
                                                    child: new Text(
                                                        "view",
                                                        style: new TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 15.0,
                                                          fontFamily: 'RobotoMono',
                                                        )
                                                    ),
                                                    colorBrightness: Brightness.light,
                                                    onPressed: () {
                                                      //push to new page
                                                    },
                                                    color: Colors.greenAccent,
                                                    shape:  RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(5.0),
                                                    ),
                                                  ),
                                                ),

                                              ],
                                            ),

                                          )
                                      ),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(new Text(
                                        '1',
                                        style: new TextStyle(
                                          fontSize: 15,
                                          color:Colors.red,
                                        ),
                                      )),
                                      DataCell( new Text(
                                        'Von Seyha',
                                        style: new TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.black,
                                        ),
                                      )),
                                      DataCell( new Text(
                                        '150000',
                                        style: new TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.black,
                                        ),
                                      )),

                                      DataCell( new Text(
                                        '15-07-2020',
                                        style: new TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.black,
                                        ),
                                      )),
                                      DataCell(
                                          Container(
                                            child: Row(
                                              children: [
                                                Container(
                                                  padding: const EdgeInsets.only(bottom: 2.0 ,left: 10.0),
                                                  width: 85.0,
                                                  height: 35.0,
                                                  child: new RaisedButton(
                                                    child: new Text(
                                                        "view",
                                                        style: new TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 15.0,
                                                          fontFamily: 'RobotoMono',
                                                        )
                                                    ),
                                                    colorBrightness: Brightness.light,
                                                    onPressed: () {
                                                      //push to new page
                                                    },
                                                    color: Colors.greenAccent,
                                                    shape:  RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(5.0),
                                                    ),
                                                  ),
                                                ),

                                              ],
                                            ),

                                          )
                                      ),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(new Text(
                                        '1',
                                        style: new TextStyle(
                                          fontSize: 15,
                                          color:Colors.red,
                                        ),
                                      )),
                                      DataCell( new Text(
                                        'Von Seyha',
                                        style: new TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.black,
                                        ),
                                      )),
                                      DataCell( new Text(
                                        '150000',
                                        style: new TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.black,
                                        ),
                                      )),

                                      DataCell( new Text(
                                        '15-07-2020',
                                        style: new TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.black,
                                        ),
                                      )),
                                      DataCell(
                                          Container(
                                            child: Row(
                                              children: [
                                                Container(
                                                  padding: const EdgeInsets.only(bottom: 2.0 ,left: 10.0),
                                                  width: 85.0,
                                                  height: 35.0,
                                                  child: new RaisedButton(
                                                    child: new Text(
                                                        "view",
                                                        style: new TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 15.0,
                                                          fontFamily: 'RobotoMono',
                                                        )
                                                    ),
                                                    colorBrightness: Brightness.light,
                                                    onPressed: () {
                                                      _displayDialog(context);
                                                    },
                                                    color: Colors.greenAccent,
                                                    shape:  RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(5.0),
                                                    ),
                                                  ),
                                                ),

                                              ],
                                            ),

                                          )
                                      ),
                                    ]),
                                  ],

                                ),
                              ],
                            ),
                          )
                        ],
                      )
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

}