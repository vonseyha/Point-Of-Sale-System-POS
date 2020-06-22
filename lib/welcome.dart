import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login.dart';

void main(){
  runApp(Welcome());
}

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
        alignment: Alignment.centerLeft,
          child: Row(
              children: [
                Expanded(
                  child: Container(
                    width:390,
                    height:700,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                           image:AssetImage("images/welcome.jpg"),
                    ),
                  ),
                 )
                ),
                Expanded(
                  child: Column(
                    children: [
                      new Container(
                        padding: new EdgeInsets.only(top: 230.0),
                          child: new Text(
                              'WELCOME',
                              style: new TextStyle(
                                fontSize: 70.0,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                                color:Colors.white,
                              )
                          )
                      ),
                      new Container(
                          child: new Text(
                              'TO',
                              style: new TextStyle(
                                fontSize: 50.0,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                                color:Colors.white,
                              )
                          )
                      ),
                      new Container(
                          child: new Text(
                              'POSCAMBO',
                              style: new TextStyle(
                                fontSize: 50.0,
                                fontFamily: 'RobotoMono',
                                fontWeight: FontWeight.bold,
                                color:Colors.deepOrange,
                              )
                          )
                      ),
                      new Container(
                        width: 220.0,
                        height: 100.0,
                        padding: const EdgeInsets.only(top: 36.0),
                        child: new RaisedButton(
                          child: new Text(
                              "Stock Management",
                              style: new TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontFamily: 'RobotoMono',
                              )
                          ),
                          colorBrightness: Brightness.light,
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                          },
                          color: Colors.deepOrange,
                          shape:  RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                      new Container(
                        width: 220.0,
                        height: 100.0,
                        padding: const EdgeInsets.only(top: 36.0),
                        child: new RaisedButton(
                          child: new Text(
                              "Stock Sale",
                              style: new TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontFamily: 'RobotoMono',
                              )
                          ),
                          colorBrightness: Brightness.light,
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                          },
                          color: Colors.lime,
                          shape:  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
          ),
      ),
    );
  }
}



