import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'constant.dart';

class ProductUpdate extends StatefulWidget {
  ProductUpdate () : super();

  final String title = "Flutter Pick Image demo";

  @override
  _PickImageDemoState createState() => _PickImageDemoState();
}

class _PickImageDemoState extends State<ProductUpdate > {
  Future<File> imageFile;

  var _productName;
  final proName = new TextEditingController();
  var _productStatus;
  final proStatus = new TextEditingController();
  var _productDes;
  final proDes = new TextEditingController();
  var _categoryName;
  final cateName = new TextEditingController();
  var _productWholesalesprice;
  final proWhprice = new TextEditingController();
  var _productretailprice;
  final proretailprice = new TextEditingController();



  pickImageFromGallery(ImageSource source) {
    setState(() {
      imageFile = ImagePicker.pickImage(source: source);
    });
  }

  Widget showImage() {
    return FutureBuilder<File>(
      future: imageFile,
      builder: (BuildContext context, AsyncSnapshot<File> snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.data != null) {
          return Image.file(
            snapshot.data,
            width: 230,
            height: 200,
          );
        } else if (snapshot.error != null) {
          return const Text(
            'Error Picking Image',
            textAlign: TextAlign.center,
          );
        } else {
          return  Container(
            width: 230,
            height: 200,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.lightBlueAccent,
                width: 5,
              ),
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: NetworkImage('https://cdn3.iconfinder.com/data/icons/ui-base-set/100/Artboard_41_copy_41-512.png'),
                fit: BoxFit.cover,
              ),

            ),
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blueAccent,
        title: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                "Update Product",
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 60.0,top: 130.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  showImage(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                      child: new Text(
                          "Stock Sale",
                          style: new TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontFamily: 'RobotoMono',
                          )
                      ),
                      color: Colors.lightBlueAccent,
                      colorBrightness: Brightness.light,
                      onPressed: () {
                        pickImageFromGallery(ImageSource.gallery);
                      },
                    ),
                  ),
                ],
              ),
            ),
            new Container(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 40.0,top: 100.0),
                  child: Column(
                    children: [
                      new Container(
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              decoration: kBoxDecorationStyle,
                              height: 60.0,
                              width: 400.0,
                              child: TextField(
                                controller: proName,
                                keyboardType: TextInputType.phone,
                                style: TextStyle(
                                  color: Colors.black38,
                                  fontFamily: 'RobotoMono',
                                  fontSize: 20.0,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.only(top: 13.0),
                                  prefixIcon: Icon(
                                    Icons.account_box,
                                    color: Colors.lightBlue,
                                  ),
                                  hintText: 'Product Name',
                                  hintStyle: kHintText,
                                ),
                              ),
                            ),

                            Container(
                              margin: const EdgeInsets.only(left: 50.0),
                              alignment: Alignment.centerRight,
                              decoration: kBoxDecorationStyle,
                              height: 60.0,
                              width: 400.0,
                              child: TextField(
                                controller: proWhprice,
                                keyboardType: TextInputType.phone,
                                style: TextStyle(
                                  color: Colors.black38,
                                  fontFamily: 'RobotoMono',
                                  fontSize: 20.0,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.only(top: 13.0),
                                  prefixIcon: Icon(
                                    Icons.shop,
                                    color: Colors.lightBlue,
                                  ),
                                  hintText: 'Product Wholesales Price' ,
                                  hintStyle: kHintText,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //New Row in Column---
                      Container(
                        margin: const EdgeInsets.only(top: 30.0),
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              decoration: kBoxDecorationStyle,
                              height: 60.0,
                              width: 400.0,
                              child: TextField(
                                controller: cateName,
                                keyboardType: TextInputType.phone,
                                style: TextStyle(
                                  color: Colors.black38,
                                  fontFamily: 'RobotoMono',
                                  fontSize: 20.0,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.only(top: 13.0),
                                  prefixIcon: Icon(
                                    Icons.attach_money,
                                    color: Colors.lightBlue,
                                  ),
                                  hintText: 'Category Name',
                                  hintStyle: kHintText,
                                ),
                              ),
                            ),

                            Container(
                              margin: const EdgeInsets.only(left: 50.0),
                              alignment: Alignment.centerRight,
                              decoration: kBoxDecorationStyle,
                              height: 60.0,
                              width: 400.0,
                              child: TextField(
                                controller: proretailprice,
                                keyboardType: TextInputType.phone,
                                style: TextStyle(
                                  color: Colors.black38,
                                  fontFamily: 'RobotoMono',
                                  fontSize: 20.0,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.only(top: 13.0),
                                  prefixIcon: Icon(
                                    Icons.attach_money,
                                    color: Colors.lightBlue,
                                  ),
                                  hintText: 'Product Retail Price',
                                  hintStyle: kHintText,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //New Column in Column---
                      Container(
                        margin: const EdgeInsets.only(top: 30.0),
                        alignment: Alignment.centerLeft,
                        decoration: kBoxDecorationStyle,
                        height: 80.0,
                        width: 850.0,
                        child: TextField(
                          controller: proStatus,
                          keyboardType: TextInputType.phone,
                          style: TextStyle(
                            color: Colors.black38,
                            fontFamily: 'RobotoMono',
                            fontSize: 20.0,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(top: 13.0),
                            prefixIcon: Icon(
                              Icons.class_,
                              color: Colors.lightBlue,
                            ),
                            hintText: 'Product Status',
                            hintStyle: kHintText,
                          ),
                        ),
                      ),
                      //New Column in Column---
                      Container(
                        margin: const EdgeInsets.only(top: 30.0),
                        alignment: Alignment.centerLeft,
                        decoration: kBoxDecorationStyle,
                        height: 130.0,
                        width: 850.0,
                        child: TextField(
                          controller: proDes,
                          keyboardType: TextInputType.phone,
                          style: TextStyle(
                            color: Colors.black38,
                            fontFamily: 'RobotoMono',
                            fontSize: 20.0,

                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(top: 13.0),
                            hintText: 'Product Description',
                            hintStyle: kHintText,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      //New Column in Column---
                      Container(
                        child: Row(
                          children: [
                            Container(
                              width: 190.0,
                              height: 100.0,
                              padding: const EdgeInsets.only(top: 40.0),
                              child: new RaisedButton(
                                child: new Text(
                                    "Concel",
                                    style: new TextStyle(
                                      color: Colors.white,
                                      fontSize: 25.0,
                                      fontFamily: 'RobotoMono',
                                    )
                                ),
                                colorBrightness: Brightness.light,
                                onPressed: () {
                                  //push to new page
                                },
                                color: Colors.lightBlueAccent,
                                shape:  RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                            //New button in row
                            Container(
                              margin: const EdgeInsets.only(left: 30.0),
                              width: 190.0,
                              height: 100.0,
                              padding: const EdgeInsets.only(top: 40.0),
                              child: new RaisedButton(
                                child: new Text(
                                    "Update",
                                    style: new TextStyle(
                                      color: Colors.white,
                                      fontSize: 25.0,
                                      fontFamily: 'RobotoMono',
                                    )
                                ),
                                colorBrightness: Brightness.light,
                                onPressed: () {
                                  //push to new page
                                },
                                color: Colors.lightBlueAccent,
                                shape:  RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            )

                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}