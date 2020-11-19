import 'package:flutter/material.dart';
import 'package:healthcare/screens/WelcomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Health Care',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => WelcomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Column(children: [
        Text("Health Care"),
        Text("1.0"),
      ],)
    );
  }
}



