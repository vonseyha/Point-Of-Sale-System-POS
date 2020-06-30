import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewCategory extends StatefulWidget{
  ViewCategory() : super();
  _ViewCategoryScreen createState() => _ViewCategoryScreen();
}

class _ViewCategoryScreen extends State<ViewCategory>{

  var _categorySearch;
  final categorySearch = new TextEditingController();
  double iconSize = 40;

  TextEditingController _textFieldController = TextEditingController();

  _displayDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
            ),

            title: new Text(
                'Add Category',
              style: new TextStyle(
                fontSize: 30.0,
                fontFamily: 'RobotoMono',
                fontWeight: FontWeight.bold,
              ),
            ),
            content: Container(
              height: 100.0,
              width: 400.0,

              child: TextField(
                controller: _textFieldController,
                decoration: InputDecoration(hintText: "category name"),
                style: new TextStyle(fontSize: 18.0,color: Colors.black),
              ),
            ),

            actions: <Widget>[
              new FlatButton(
                child: new Text('SUBMIT',style: new TextStyle(fontWeight: FontWeight.bold , fontSize: 20.0),),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
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
                        'Dashbaord / All Category',
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
                            'CATEGORY INSERT',
                            style: new TextStyle(
                              fontFamily: 'RobotoMono',
                              fontSize: 30.0,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        Container(
                          margin: const EdgeInsets.only(left: 800.0),
                          height: 45.0,
                          child: new RaisedButton(
                            child: new Text(
                                "Add New",
                                style: new TextStyle(
                                  color: Colors.white,
                                  fontSize: 22.0,
                                  fontFamily: 'RobotoMono',
                                )
                            ),
                            colorBrightness: Brightness.light,
                            onPressed: () {
                              _displayDialog(context);
                            },
                            color: Colors.lightBlueAccent,
                            shape:  RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3.0),
                            ),
                          ),
                        )
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
                      controller: _categorySearch,
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
                                      DataCell(Text('1')),
                                      DataCell( new Text(
                                        'Sea Food',
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
                                                width: 85.0,
                                                height: 35.0,
                                                padding: const EdgeInsets.only(bottom: 2.0 , left: 10.0 ),
                                                child: new RaisedButton(
                                                  child: new Text(
                                                      "edit",
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
                                                  color: Colors.lightBlueAccent,
                                                  shape:  RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(5.0),
                                                  ),
                                                ),
                                              ),
                                              //New button in row
                                              Container(
                                               padding: const EdgeInsets.only(bottom: 2.0 ,left: 10.0),
                                                width: 85.0,
                                                height: 35.0,
                                                child: new RaisedButton(
                                                  child: new Text(
                                                      "delete",
                                                      style: new TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15.0,
                                                        fontFamily: 'RobotoMono',
                                                      )
                                                  ),
                                                  colorBrightness: Brightness.light,
                                                  onPressed: () {
                                                    //new page
                                                  },
                                                  color: Colors.red,
                                                  shape:  RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(5.0),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),

                                        )
                                      ),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('12')),
                                      DataCell(Text('John')),
                                      DataCell(Text('9')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('42')),
                                      DataCell(Text('Tony')),
                                      DataCell(Text('8')),
                                    ]),

                                    DataRow(cells: [
                                      DataCell(Text('1')),
                                      DataCell(Text('Arya')),
                                      DataCell(Text('6')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('12')),
                                      DataCell(Text('John')),
                                      DataCell(Text('9')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('42')),
                                      DataCell(Text('Tony')),
                                      DataCell(Text('8')),
                                    ]),

                                    DataRow(cells: [
                                      DataCell(Text('1')),
                                      DataCell(Text('Arya')),
                                      DataCell(Text('6')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('12')),
                                      DataCell(Text('John')),
                                      DataCell(Text('9')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('42')),
                                      DataCell(Text('Tony')),
                                      DataCell(Text('8')),
                                    ]),

                                    DataRow(cells: [
                                      DataCell(Text('1')),
                                      DataCell(Text('Arya')),
                                      DataCell(Text('6')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('12')),
                                      DataCell(Text('John')),
                                      DataCell(Text('9')),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('42')),
                                      DataCell(Text('Tony')),
                                      DataCell(Text('8')),
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
