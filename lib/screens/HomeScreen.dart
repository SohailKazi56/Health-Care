import 'package:flutter/material.dart';
import 'package:healthcare/screens/BrowseScreen.dart';
import 'package:healthcare/screens/FavoriteScreen.dart';
import 'package:healthcare/screens/LocationScreen.dart';
import 'package:healthcare/screens/ProfileScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _currentIndex = 0;
  final tabs = [
    LocationScreen(),
    BrowseScreen(),
    FavoriteScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: tabs[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        iconSize: 25,
        selectedFontSize: 15,
        selectedItemColor: Colors.blue[900],
        items: [
         BottomNavigationBarItem(
           icon:  Icon(Icons.location_on),
           label : "Location",  
         ),

         BottomNavigationBarItem(
           icon:  Icon(Icons.menu),
           label : "Browse", 
         ),

         BottomNavigationBarItem(
           icon:  Icon(Icons.favorite),
           label : "Favorites",
         ),

         BottomNavigationBarItem(
           icon:  Icon(Icons.person),
           label : "Profile",
         ),   
        ],
        onTap: (index){
          setState(() {
            _currentIndex=index;
          });
        }
      ), 
    );
  }
}