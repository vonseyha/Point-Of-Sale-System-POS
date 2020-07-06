import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Order.dart';
import 'OrderCard.dart';

class StockSale extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<StockSale> {

  List<Quote> quotes =[
    Quote('hello fri',1500),
    Quote('hello fri',2000),
    Quote('hello fri',1000),
  ];

List<String> qoute =[
  'Coffee',
  'Karabav',
  'Chempean',
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          Expanded(
            flex: 2,
            child: Row(
              children: <Widget>[
                Image.asset('images/logosmall.png'),
                SizedBox(width: 30.0,),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Foods',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Choose sub category of foods',
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 30.0),
                Icon(
                    Icons.search,
                  size: 40.0,
                ),
                SizedBox(width: 20.0),
                Text(
                  '|',
                  style: TextStyle(
                    fontSize: 40.0,
                  ),
                ),
                SizedBox(width: 10.0,),
                Text(
                  'Search or scan for items',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.grey[400],
                  ),
                ),
                SizedBox(width: 180.0,),
                Container(
                  padding: EdgeInsets.all(10.0),
                  color: Colors.lightBlueAccent,
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage: AssetImage('images/iconprofile.png'),
                      ),
                      SizedBox(width: 20.0,),
                      Text(
                        'Von Seyha',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 30.0,),
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.lightBlueAccent,
                  child: Icon(
                    Icons.settings,
                    color: Colors.white,
                    size: 40.0,
                  ),
                ),
              ]
            ),
          ),

          Expanded(
            flex: 2,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20.0, 30.0, 0.0, 0.0),
                          child: Expanded(
                            child: Text('Choose category'),
                          ),
                        ),
                        Expanded(
                            child: Text(
                              'Foods',
                              style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                          ),
                            ),
                          ),
                      ],
                    ),
//                    color: Colors.grey,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                    margin: EdgeInsets.fromLTRB(0.0, 20.0, 20.0, 0.0),
                    child: Icon(
                        Icons.arrow_forward_ios,
                      size: 30.0,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
                          child: Expanded(
                            child: Text('Choose sub category'),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'Regular',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                            ),
                          ),
                        ),
                      ],
                    ),
//                    color: Colors.grey,
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 12,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                    color: Colors.blueGrey,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.all(5.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Text(
                                'New Order',
                                style: TextStyle(
                                  fontSize: 30.0,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Sunday 01 2019',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          color: Colors.blue,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start
                          ,
                          children: quotes.map((e) => QuoteCard(
                              e,
                                  (){
                                setState(() {
                                  quotes.remove(e);
                                });
                              }
                          )).toList(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 14,
                  child: Container(
                    color: Colors.grey[300],
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: <Widget>[
                        FlatButton(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'Foods',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          disabledColor: Colors.blueAccent,
                        ),
                        SizedBox(width: 10.0,),
                        FlatButton(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'Drink',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          disabledColor: Colors.grey[300],
                        ),
                        SizedBox(width: 0.0,),
                        FlatButton(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'Dessert',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          disabledColor: Colors.grey[300],
                        ),
                        FlatButton(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'Short',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          disabledColor: Colors.grey[300],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        'SAVE',
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      disabledColor: Colors.red,
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        'Pay Now',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                          color: Colors.white,
                        ),
                      ),
                      disabledColor: Colors.orangeAccent,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}


