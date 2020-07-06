import 'package:flutter/material.dart';
import 'Order.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final Function delete;
  int qautity = 2;
  int totalPrice;


  QuoteCard(this.quote, this.delete);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        quote.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.black,
                          ),
                      ),
                      Text(
                        '${quote.price} R',
                        style: TextStyle(
                          fontSize: 13.0,
                          color: Colors.grey[600],
                          ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                      '${quote.price * qautity} R',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      ),
                    ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 2,
                    child: Text('')),
                Expanded(
                  flex: 2,
                  child: FlatButton.icon(
                      onPressed: (){},
                      icon: Icon(Icons.delete,
                      color: Colors.red,),
                      label: Text('')),
                ),
                Expanded(
                  flex: 4,
                  child: Row(
                    children: <Widget>[
                      Text('${qautity}',
                      style: TextStyle(
                        fontSize: 20.0
                      ),),
                      SizedBox(width: 30.0,),
                      Text('|',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),),
                      FlatButton.icon(
                          onPressed: (){},
                          icon: Icon(Icons.add,
                          color: Colors.blue,),
                          label: Text('')),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                    child: Text('')),
              ],
            ),
           ]
        ),
      ),
    );
  }
}