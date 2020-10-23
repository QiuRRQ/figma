
import 'package:figmaui/screen_onboarding/screen_onboarding.dart';
import 'package:figmaui/service/database.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenLoginAccount extends StatefulWidget {
  @override
  ScreenLoginAccountState createState() => new ScreenLoginAccountState();
}

class ScreenLoginAccountState extends State<ScreenLoginAccount> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool success = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Firebase.initializeApp().whenComplete(() {
      print("completed");
      setState(() {});
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image/background.png"),
                    fit: BoxFit.fill)),
          ),
          Positioned(
            top: 4,
            left: 4,
            child: Container(
              margin: EdgeInsets.only(top: 48),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: new Image.asset("assets/image/back-arrow.png"),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.60,
            width: MediaQuery.of(context).size.width,
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.40),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(51.0),
                    topRight: Radius.circular(51.0))),
            child: ListView(
              children: <Widget>[
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin:
                            EdgeInsets.only(top: 44.0, left: 54.0, right: 86.6),
                        child: Text(
                          "Login ",
                          style: TextStyle(
                              fontFamily: "Roboto",
                              fontSize: 23.0,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(left: 54.0, top: 39.0, right: 246.0),
                          child: TextField(
                            keyboardType: TextInputType.text,
                            controller: email,
                            maxLines: 1,
                            style: TextStyle(
                                fontSize: 16.29,
                                color: Color(0xFF000000),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Roboto"),
                            decoration: InputDecoration(
                              hintText: "Email",
                              hintStyle: TextStyle(fontFamily: "Roboto",
                                  fontSize: 16.29,
                                  color: Color(0xFF000000),
                                  fontWeight: FontWeight.w400,)
                            ),
                          )),
                      Container(
                        margin: EdgeInsets.only(left: 54.0, right: 54.0),
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Color(0xFF3549FB))),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(left: 54.0, top: 35.0, right: 246.0),
                          child: TextField(
                            keyboardType: TextInputType.text,
                            controller: password,
                            maxLines: 1,
                            style: TextStyle(
                                fontSize: 16.29,
                                color: Color(0xFF000000),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Roboto"),
                            decoration: InputDecoration(
                                hintText: "Password",
                                hintStyle: TextStyle(fontFamily: "Roboto",
                                  fontSize: 16.29,
                                  color: Color(0xFF000000),
                                  fontWeight: FontWeight.w400,)
                            ),
                          )),
                      Container(
                        margin: EdgeInsets.only(left: 54.0, right: 54.0),
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Color(0xFF3549FB))),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 33,
                        margin: EdgeInsets.only(top: 55,left: 54, right: 54),
                        child: RaisedButton(
                          color: Color(0xFF3549FB),
                          onPressed: (){
                            login();

                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.5)),
                          child: Container(
                            margin:
                            EdgeInsets.only(top: 7, bottom: 7, right: 72, left: 73),
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF),
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
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void login() async {
    Auth auth = Auth();
    String userId = await auth.signIn(email.text.toString(), password.text.toString());
    print("signed in: $userId");
    if(userId != ""){
      setState(() {
        success = true;
      });
      Navigator.push(
          context, MaterialPageRoute(builder: (c) => ScreenOnBoarding()));
    }
  }


}
