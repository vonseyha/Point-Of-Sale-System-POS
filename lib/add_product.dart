import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Addproduct extends StatefulWidget {
  @override
  _AddproductScreen createState() => _AddproductScreen();
}

class _AddproductScreen extends State<Addproduct>{

  File image;
  Future getImage() async{
    File picture = await ImagePicker.pickImage(source: ImageSource.camera,maxWidth: 300.0,maxHeight: 500.0);
    setState(() {
      image = picture;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        child: image == null
        ? Text("Smash the camera button to take a picture")
        :Image.file(image)
      ),
      drawer: Text("This is a drawer"),
      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        tooltip: 'Pick Image',
        child: Icon(Icons.add_a_photo),
      ),
    );
  }
}