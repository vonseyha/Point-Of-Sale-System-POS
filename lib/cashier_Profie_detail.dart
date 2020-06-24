import 'package:flutter/material.dart';

class CashierDetail extends StatefulWidget {
  CashierDetail() : super();

  @override
  _Productdetail createState() => _Productdetail();
}

class _Productdetail extends State<CashierDetail>{

  String name = "Sanit Korn";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back,color: Colors.lightBlue,size: 40.0,),
              onPressed: () {
                //back to any page
                },
            );
          },
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 50.0),
        child: Row(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    child: Container(
                      margin: const EdgeInsets.only(left: 110.0 , top: 80.0),
                      width:250,
                      height:90,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:AssetImage("images/logo.png"),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Container(
                      margin: const EdgeInsets.only(left: 130.0 , top: 20.0),
                      width:300,
                      height:300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:AssetImage("images/iconprofile.png"),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 130.0,top: 20.0),
                      child: new Text(
                          name,
                          style: new TextStyle(
                            fontSize: 35.0,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            color:Colors.red,
                          )
                      )
                  ),
                ],
              ),
            ),
            //new column in row
            Container(
              margin: const EdgeInsets.only(left: 170.0,top: 100.0),
              child: Column(
                children: [
                    Container(
                      child:  new Text(
                        'Cashier Info',
                        style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 45,
                          fontFamily: 'RobotoMono',
                          color:Colors.red,
                        ),
                      ),
                    ),
                    Container(
                    margin: const EdgeInsets.only(top:50.0),
                    child: Row(
                      children: [
                        Container(
                          child:  new Text(
                            'Full Name : ',
                            style: new TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                              fontFamily: 'RobotoMono',
                              color:Colors.blueAccent,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 60.0),
                            child: new Text(
                                name,
                                style: new TextStyle(
                                  fontSize: 30.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  color:Colors.black38,
                                )
                            )
                        )
                      ],
                    ),
                  ),
                  //new Container row in Column
                  Container(
                    margin: const EdgeInsets.only(top:30.0),
                    child: Row(
                      children: [
                        Container(
                          child:  new Text(
                            'Nick Name : ',
                            style: new TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                              fontFamily: 'RobotoMono',
                              color:Colors.blueAccent,
                            ),
                          ),
                        ),
                        Container(
                            margin: const EdgeInsets.only(left: 60.0),
                            child: new Text(
                                name,
                                style: new TextStyle(
                                  fontSize: 30.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  color:Colors.black38,
                                )
                            )
                        )
                      ],
                    ),
                  ),

                  //new Container row in Column
                  Container(
                    margin: const EdgeInsets.only(top:30.0),
                    child: Row(
                      children: [
                        Container(
                          child:  new Text(
                            'Contact : ',
                            style: new TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                              fontFamily: 'RobotoMono',
                              color:Colors.blueAccent,
                            ),
                          ),
                        ),
                        Container(
                            margin: const EdgeInsets.only(left: 60.0),
                            child: new Text(
                                name,
                                style: new TextStyle(
                                  fontSize: 30.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  color:Colors.black38,
                                )
                            )
                        )
                      ],
                    ),
                  ),

                  //new Container row in Column
                  Container(
                    margin: const EdgeInsets.only(top:30.0),
                    child: Row(
                      children: [
                        Container(
                          child:  new Text(
                            'Email : ',
                            style: new TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                              fontFamily: 'RobotoMono',
                              color:Colors.blueAccent,
                            ),
                          ),
                        ),
                        Container(
                            margin: const EdgeInsets.only(left: 60.0),
                            child: new Text(
                                name,
                                style: new TextStyle(
                                  fontSize: 30.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  color:Colors.black38,
                                )
                            )
                        )
                      ],
                    ),
                  ),

                  //new Container row in Column
                  Container(
                    margin: const EdgeInsets.only(top:30.0),
                    child: Row(
                      children: [
                        Container(
                          child:  new Text(
                            'Address : ',
                            style: new TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                              fontFamily: 'RobotoMono',
                              color:Colors.blueAccent,
                            ),
                          ),
                        ),
                        Container(
                            margin: const EdgeInsets.only(left: 60.0),
                            child: new Text(
                                name,
                                style: new TextStyle(
                                  fontSize: 30.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  color:Colors.black38,
                                )
                            )
                        )
                      ],
                    ),
                  )
                ],
              )

            )
          ],
        ),
      ),
    );
  }

}