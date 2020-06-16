import 'package:flutter/material.dart';

class Wallpaper extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(child: new Text('Hello'));
  }
}

class Picture extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var assetImage = new AssetImage('images/cashier.jpg');
    var image = new Image(image: assetImage);
    return new Container(child: image);
  }
}