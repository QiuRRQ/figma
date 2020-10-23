import 'package:flutter/material.dart';

class ScreenOnBoarding extends StatefulWidget {
  @override
  ScreenOnBoardingState createState() => new ScreenOnBoardingState();
}

class ScreenOnBoardingState extends State<ScreenOnBoarding> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
          ),
          Positioned(
            top: 150,
            left: 23,
            child: Container(
              width: 281.51,
              height: 201,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/image/data.png"),
                      fit: BoxFit.cover)),
            ),
          ),
          Positioned(
            top: 391,
            left: 23,
            child: Container(
              width: 335,
              height: 32,
              child: Text(
                "Welcome to the app ",
                style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 25.0,
                    color: Color(0xFF000000),
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Positioned(
            top: 451,
            left: 40,
            child: Container(
              width: 301,
              height: 142,
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Egestas scelerisque porttitor turpis viverra lobortis convallis. Libero tristique donec turpis elit adipiscing sit faucibus tincidunt. Erat porttitor amet, nibh id lorem. Volutpat quam vestibulum egestas ut odio odio. Nunc non, feugiat a diam at lacus augue. Sit lacus pharetra eget feugiat aliquam enim adipiscing. Purus nec tortor tellus, neque montes. Gravida ornare eu viverra libero. Vulputate massa turpis posuere nibh dolor pulvinar bibendum. Viverra scelerisque ut dignissim at sit s",
                style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 12.0,
                    color: Color(0xFF000000),
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
