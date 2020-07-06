import 'dart:convert';
import 'profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pos_app/constant.dart';
import 'package:pos_app/login.dart';
import 'package:pos_app/wallpaper.dart';
import 'api_call.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpScreen createState() => _SignUpScreen();
}

class _SignUpScreen extends State<SignUp> {

  TextEditingController conUsername = new TextEditingController();
  TextEditingController conPhone = new TextEditingController();
  TextEditingController conEmail = new TextEditingController();
  TextEditingController conPassword = new TextEditingController();

  bool _isLoading = false;

  Widget _buildUsernameTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 20.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          width: 500.0,
          child: TextFormField(
            controller: conUsername,
            keyboardType: TextInputType.text,
            style: TextStyle(
              color: Color(0xFF00FF0F),
              fontFamily: 'OpenSans',
              fontSize: 20.0,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 13.0),
              prefixIcon: Icon(
                Icons.person,
                color: Color(0xFF00FF0F),
              ),
              hintText: 'Username',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPhoneTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 20.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          width: 500.0,
          child: TextFormField(
            controller: conPhone,
            keyboardType: TextInputType.phone,
            style: TextStyle(
              color: Color(0xFF00FF0F),
              fontFamily: 'OpenSans',
              fontSize: 20.0,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 13.0),
              prefixIcon: Icon(
                Icons.phone,
                color: Color(0xFF00FF0F),
              ),
              hintText: 'Phone Number',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildEmailTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          width: 500.0,
          child: TextFormField(
            controller: conEmail,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Color(0xFF00FF0F),
              fontFamily: 'OpenSans',
              fontSize: 20.0,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 13.0),
              prefixIcon: Icon(
                Icons.email,
                color: Color(0xFF00FF0F),
              ),
              hintText: 'Email Address',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPasswordTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          width: 500.0,
          child: TextField(
            controller: conPassword,
            obscureText: true,
            style: TextStyle(
              color: Color(0xFF00FF0F),
              fontFamily: 'OpenSans',
              fontSize: 20.0,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 13.0),
              prefixIcon: Icon(
                Icons.lock,
                color: Color(0xFF00FF0F),
              ),
              hintText: 'Password',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildRegisterBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: 500.0,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () {
          _isLoading ? null : _signUp;
          conUsername.clear();
          conPhone.clear();
          conEmail.clear();
          conPassword.clear();
          print('Login Button Pressed');
        },
        padding: EdgeInsets.all(17.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: Colors.white,
        splashColor: Colors.black,
        child: Text(
          'SIGN UP',
          style: TextStyle(
            color: Color(0xFF00FF0F),
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }

  Widget _buildSignInWith() {
    return Column(
      children: <Widget>[
        Text(
          '- OR -',
          style: TextStyle(
            color: Color(0xFFFFFFFF),
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 20.0),
        Text(
          'Sign in with',
          style: kLabelStyle,
        ),
      ],
    );
  }

  Widget _buildSocialBtn(Function onTap, AssetImage logo) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 2),
              blurRadius: 6.0,
            ),
          ],
          image: DecorationImage(
            image: logo,
          ),
        ),
      ),
    );
  }

  Widget _buildSocialBtnRow() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildSocialBtn(
                () => print('Login with Facebook'),
            AssetImage(
              'images/facebook.jpg',
            ),
          ),
          _buildSocialBtn(
                () => print('Login with Google'),
            AssetImage(
              'images/google.jpg',
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLoginBtn() {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
        print('Login button pressed');
      },
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Already have an Account? ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: 'Login',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Row(
            children: <Widget>[
              Expanded(
                child: new Picture(),
              ),
              Expanded(
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: double.infinity,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFFA0FB0B),
                            Color(0xFFA0FB0B),
                            Color(0xFF00FF0F),
                            Color(0xFF00FF0F),
                          ],
                          stops: [0.1, 0.4, 0.7, 0.9],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10.0),
                      height: double.infinity,
                      child: ListView(
                        shrinkWrap: true,
                        children: <Widget>[
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(height: 50.0),
                                Text(
                                  'REGISTER',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'OpenSans',
                                    fontSize: 40.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 30.0),
                                _buildUsernameTF(),
                                SizedBox(height: 10.0),
                                _buildPhoneTF(),
                                SizedBox(height: 20.0),
                                _buildEmailTF(),
                                SizedBox(height: 20.0),
                                _buildPasswordTF(),
                                SizedBox(height: 20.0),
                                _buildRegisterBtn(),
                                _buildSignInWith(),
                                _buildSocialBtnRow(),
                                _buildLoginBtn(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _signUp() async{
    setState(() {
      _isLoading = true;
    });
    var data = {
      'staff_name' : conUsername.text,
      'staff_phonenumber' : conPhone.text,
      'staff_email' : conEmail.text,
      'staff_password' : conPassword.text,
    };
    var res = await CallApi().postData(data, 'staff/register');
    var body = json.decode(res.body);
    if(body['success']){
      SharedPreferences localStorage = await SharedPreferences.getInstance();
      localStorage.setString('token', body['token']);
      localStorage.setString('user', json.encode(body['user']));

      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (context) => Profile()));
    }

    setState(() {
      _isLoading = false;
    });

  }
}