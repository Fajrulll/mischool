import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:mischool/profil.dart';
import 'package:mischool/home.dart';
import 'package:mischool/absen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    Container(
      color: Color.fromARGB(255, 255, 255, 255),
      child: Center(
        child: Text(
          'Settings',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    ),
    absen(),
    home(),
    Profil(), // Here you add the profile page directly
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.orange,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 55, // Set the height here
        buttonBackgroundColor: Colors.transparent,
        // Change button background color to transparent
        color: Colors.blue,
        backgroundColor: Colors.transparent,
        items: <Widget>[
          Image.asset(
            'assets/images/Setting.png',
            height: 26,
            width: 26,
            color: _selectedIndex == 0 ? Colors.black : Colors.white,
          ),
          Image.asset(
            'assets/images/Document.png',
            height: 26,
            width: 26,
            color: _selectedIndex == 1 ? Colors.black : Colors.white,
          ),
          Image.asset(
            'assets/images/Home.png',
            height: 26,
            width: 26,
            color: _selectedIndex == 2 ? Colors.black : Colors.white,
          ),
          Image.asset(
            'assets/images/Profile.png',
            height: 26,
            width: 26,
            color: _selectedIndex == 3 ? Colors.black : Colors.white,
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
