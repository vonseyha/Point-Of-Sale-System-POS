import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Addproduct extends StatefulWidget {
  @override
  _AddproductScreen createState() => _AddproductScreen();
}

class _AddproductScreen extends State<Addproduct>{
  File _image;

  @override
  void initState() {
    super.initState();
  }

  void open_camara() async{
    // ignore: deprecated_member_use
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return Scaffold(
       body: Center(
         child: Container(
           child: Padding(
             padding: const EdgeInsets.all(50.0),
             child: Column(
               children: [
                 Container(child: _image == null ? new Image.asset(
                    'images/welcome.jpg',
                   width: 600.0,
                   height: 240.0,
                   fit: BoxFit.cover,
                    )
                     : Image.file(_image),
                 ),
                 FlatButton(
                     child: Text("Uploade Picture "),
                   onPressed: (){
                       open_camara();
                   },
                 )
               ],
             ),
           ),
         )
       ),
     );
  }
}