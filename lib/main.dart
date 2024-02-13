import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:mischool/kntrl_org_tua/homescreen.dart';
import 'package:mischool/kntrl_org_tua/profil.dart';
import 'package:mischool/kntrl_org_tua/home.dart';
import 'package:mischool/kntrl_org_tua/absen.dart';
import 'package:mischool/kntrl_org_tua/setting.dart';
// import 'package:mischool/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
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
    Setting(),
    absen(),
    home(),
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
    return Stack(
      children: [
        // Gambar pattern1 di atas pojok kanan
        Positioned(
          top: 0,
          right: 0,
          child: Image.asset(
            'assets/images/pattern1.png',
            width: 100,
            height: 100,
          ),
        ),
        // Gambar pattern2 di bawah pojok kiri
        Positioned(
          bottom: 0,
          left: 0,
          child: Image.asset(
            'assets/images/pattern2.png',
            width: 100,
            height: 100,
          ),
        ),
        Scaffold(
          extendBody: true,
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
            buttonBackgroundColor: Colors.white,
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Setting()));
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
        ),
      ],
    );
  }
}
