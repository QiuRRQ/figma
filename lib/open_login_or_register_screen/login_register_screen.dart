import 'package:auto_size_text/auto_size_text.dart';
import 'package:figmaui/screen_login_account/screen_login_account.dart';
import 'package:figmaui/screen_register_account/screen_register_account.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class loginRegisterScreen extends StatefulWidget {
  @override
  loginRegisterState createState() => new loginRegisterState();
}

class loginRegisterState extends State<loginRegisterScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/image/background.png"),
                fit: BoxFit.fill)),
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            Container(
              width: 267,
              height: 33,
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.60, left: 54, right: 54),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.5)),
                color: Color(0xFFFFFFFF),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (c) => ScreenRegisterAccount()));
                },
                child: Container(
                  margin:
                  EdgeInsets.only(top: 7, bottom: 7, right: 69, left: 70),
                  child: Text(
                    "Register Account",
                    style: TextStyle(
                        color: Color(0xFF000000),
                        fontWeight: FontWeight.w500,
                        fontSize: 16.29,
                        fontFamily: "Roboto"),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Container(
              width: 267,
              height: 33,
              margin: EdgeInsets.only(top: 44.0,left: 54.0, right: 54.0, bottom: 145.0),
              child: RaisedButton(
                color: Colors.white,
                onPressed: (){
                  Navigator.push(
                      context, MaterialPageRoute(builder: (c) => ScreenLoginAccount()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.5)),
                child: Container(
                  margin:
                  EdgeInsets.only(top: 7, bottom: 7, right: 72, left: 73),
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Color(0xFF000000),
                        fontWeight: FontWeight.w500,
                        fontSize: 16.29,
                        fontFamily: "Roboto"),
                    textAlign: TextAlign.center,
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
