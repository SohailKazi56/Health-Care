import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              Text(
                " Login Here ",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 10),
              ListView(
                children: [
                  Form(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(),
                            decoration: InputDecoration(
                              labelText: "Your email address",
                              prefixIcon: Icon(Icons.email),
                            ),
                            validator: (val) {
                              return RegExp(
                                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                      .hasMatch(val)
                                  ? null
                                  : "Enter correct email";
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            style: TextStyle(),
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: "Your password",
                              prefixIcon: Icon(Icons.vpn_key),
                            ),
                            validator: (value) {
                              return value.isEmpty || value.length < 6
                                  ? "Enter Password 3+characters"
                                  : null;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15, right: 15, bottom: 15, top: 20),
                    child: OutlineButton(
                      onPressed: () {},
                      borderSide:
                          BorderSide(width: 2.0, color: Colors.blue[600]),
                      padding: EdgeInsets.symmetric(
                          vertical: 13.0, horizontal: 150.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      textColor: Colors.blue,
                      splashColor: Colors.black45,
                      child: Text("Login"),
                    ),
                  ),
                  DecoratedBox(
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        color: Colors.blue[900]),
                    child: OutlineButton(
                        onPressed: () {},
                        // padding: EdgeInsets.symmetric(
                        //     horizontal: 103.0, vertical: 13.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        child: Text(
                          "Login with Facebook",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: FlatButton(
                      onPressed: () {},
                      textColor: Colors.black54,
                      child: Text(
                        "Forget Password?",
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
