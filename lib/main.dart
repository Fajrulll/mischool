import 'package:flutter/material.dart';
import 'package:mischool/kntrl_org_tua/homescreen.dart';
import 'package:mischool/kntrl_org_tua/profil.dart';
import 'package:mischool/kntrl_org_tua/home.dart';
import 'package:mischool/kntrl_org_tua/absen.dart';
import 'package:mischool/kntrl_org_tua/setting.dart';

//import 'package:mischool/Siswa/profil.dart';
//import 'package:mischool/Siswa/home.dart';
//import 'package:mischool/Siswa/absen.dart';
//import 'package:mischool/Siswa/setting.dart';

//import 'package:mischool/Guru/profil.dart';
//import 'package:mischool/Guru/home.dart';
//import 'package:mischool/Guru/absen.dart';
//import 'package:mischool/Guru/setting.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

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
  late PersistentTabController _controller;

  List<Widget> _buildScreens() {
    return [
      home(),
      absen(),
      Container(), // Halaman Setting dipindahkan ke Navigator
      Profil(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Image.asset(
          'assets/icon/home_blue.png',
          height: 26,
          width: 26,
        ),
        title: ("Absen"),
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
        inactiveIcon: Image.asset(
          'assets/icon/home.png',
          height: 26,
          width: 26,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          'assets/icon/absen_blue.png',
          height: 26,
          width: 26,
        ),
        title: ("Home"),
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
        inactiveIcon: Image.asset(
          'assets/icon/absen.png',
          height: 26,
          width: 26,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          'assets/icon/setting.png',
          height: 26,
          width: 26,
        ),
        title: ("Setting"),
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
        inactiveIcon: Image.asset(
          'assets/icon/setting.png',
          height: 26,
          width: 26,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          'assets/icon/profil_blue.png',
          height: 26,
          width: 26,
        ),
        title: ("Profil"),
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
        inactiveIcon: Image.asset(
          'assets/icon/profil.png',
          height: 26,
          width: 26,
        ),
      ),
    ];
  }

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  void _navigateToSettingPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Setting()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        navBarHeight: 80,
        backgroundColor: Colors.white,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        navBarStyle: NavBarStyle.style6,
        onItemSelected: (index) {
          // Cek jika item yang dipilih adalah item Setting
          if (index == 2) {
            // Navigasi ke halaman Setting
            _navigateToSettingPage();
          }
        },
      ),
    );
  }
}
