import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:mischool/profil.dart';
import 'package:mischool/home.dart';
import 'package:mischool/absen.dart';
<<<<<<< HEAD
import 'package:mischool/setting.dart'; // Import halaman setting
=======
import 'package:mischool/setting.dart';
>>>>>>> 564006d26c504d427822b8d7af6c7dc3f29bb3d9

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
  late PageController _pageController;
  int _selectedIndex = 2; // Inisialisasi halaman home sebagai halaman pertama

  final List<Widget> _widgetOptions = <Widget>[
<<<<<<< HEAD
    Container(
      color: Color.fromARGB(255, 255, 255, 255),
      child: Center(
        child: Text(
          'Settings',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    ),
=======
    setting(),
    absen(),
>>>>>>> 564006d26c504d427822b8d7af6c7dc3f29bb3d9
    home(),
    absen(),
    Profil(),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _selectedIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.orange,
      body: PageView.builder(
        controller: _pageController,
        itemCount: _widgetOptions.length,
        itemBuilder: (context, index) {
          return _widgetOptions[index];
        },
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 55,
        buttonBackgroundColor: Colors.transparent,
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
          if (index == 0) {
            // Navigate to setting page without animation
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Setting()));
          } else {
            // Navigate to other pages
            _pageController.animateToPage(
              index,
              duration: Duration(milliseconds: 200),
              curve: Curves.easeInOut,
            );
          }
        },
      ),
    );
  }
}
