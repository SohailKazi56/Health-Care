import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            'assets/welcome.jpg',
            fit: BoxFit.fitWidth,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  flex: 7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Text(
                            "Health Care",
                            style: TextStyle(
                                fontSize: 24.0, fontWeight: FontWeight.bold),
                          )),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Discover the nearby hospitals and clinics \n and stay fit & stay healthy",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 1.0,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  )),
              Expanded(
                flex: 3,
                child: Column(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(bottom: 50.0)),
                    DecoratedBox(
                      decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          color: Colors.white),
                      child: OutlineButton(
                        onPressed: () {},
                        padding: EdgeInsets.symmetric(
                            horizontal: 130.0, vertical: 13.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        child: Text("Login",
                            style: TextStyle(
                                color: Colors.blue[900], fontSize: 20)),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: OutlineButton(
                          onPressed: () {},
                          borderSide:
                              BorderSide(width: 2.0, color: Colors.white),
                          padding: EdgeInsets.symmetric(
                              horizontal: 120.0, vertical: 13.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          child: Text(
                            "Register",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                        )),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
