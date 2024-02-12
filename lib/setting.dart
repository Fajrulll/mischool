import 'package:flutter/material.dart';
import 'package:mischool/home.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool isNotificationSwitched = false;
  bool isAppNotificationSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.only(left: 30), // Menambahkan padding dari kiri
          child: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.blue),
            onPressed: () {
              // Kembali ke halaman home dengan menutup semua rute lainnya
              Navigator.popUntil(context, (route) => route.isFirst);
            },
          ),
        ),
        title: Text(
          'Pengaturan',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center, // Atur teks menjadi di tengah
        ),
        centerTitle: true, // Teks "Pengaturan" berada di tengah app bar
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
        children: [
          SizedBox(height: 64),
          buildSection('Akun', 'assets/images/line1.png',
              true), // True untuk menampilkan garis di kiri
          Divider(),
          buildListTileWithIcon(
            title: 'Profil',
            iconPath: 'assets/images/vector.png',
            width: 7,
            height: 12,
          ),
          buildListTileWithIcon(
            title: 'Ubah Kata Sandi',
            iconPath: 'assets/images/vector.png',
            width: 7,
            height: 12,
          ),
          SizedBox(height: 30),
          buildSection('Notifikasi', 'assets/images/line2.png',
              false), // False untuk menampilkan garis di kanan
          Divider(),
          buildNotificationListTile(
            title: 'Notifikasi',
            value: isNotificationSwitched,
            onChanged: (value) {
              setState(() {
                isNotificationSwitched = value;
              });
            },
          ),
          buildNotificationListTile(
            title: 'Notifikasi Aplikasi',
            value: isAppNotificationSwitched,
            onChanged: (value) {
              setState(() {
                isAppNotificationSwitched = value;
              });
            },
          ),
          SizedBox(height: 30),
          buildSection('Lainnya', 'assets/images/line3.png',
              false), // False untuk menampilkan garis di kanan
          Divider(),
          buildListTileWithIcon(
            title: 'Kebijakan Privasi',
            iconPath: 'assets/images/vector.png',
            width: 7,
            height: 12,
          ),
          SizedBox(height: 40),
          Container(
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    // Perform logout action
                  },
                  child: Container(
                    width: 109,
                    height: 32,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(66),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          right: 78,
                          child: Image.asset(
                            'assets/images/elipse2.png',
                            width: 18,
                            height: 16,
                          ),
                        ),
                        Positioned(
                          left: 24, // Menggeser ikon ke kanan
                          child: Image.asset(
                            'assets/images/elipse1.png',
                            width: 14,
                            height: 12,
                          ),
                        ),
                        Positioned(
                          left: 45, // Menggeser teks "Logout" ke kiri
                          child: Text(
                            'Logout',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildListTileWithIcon({
    required String title,
    required String iconPath,
    required double width,
    required double height,
  }) {
    return ListTile(
      title: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: TextStyle(fontSize: 16), // Menambahkan font size
            ),
          ),
          Spacer(),
          Image.asset(
            iconPath,
            width: width,
            height: height,
          ),
        ],
      ),
      onTap: () {
        // Navigate to respective page
      },
    );
  }

  Widget buildNotificationListTile({
    required String title,
    required bool value,
    required Function(bool) onChanged,
  }) {
    return ListTile(
      title: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: TextStyle(fontSize: 16), // Menambahkan font size
            ),
          ),
          Transform.scale(
            scale: 0.8, // Atur faktor skala sesuai kebutuhan
            child: Switch(
              value: value,
              onChanged: onChanged,
              activeColor: Colors.white,
              inactiveThumbColor: Colors.grey,
              inactiveTrackColor: Color.fromARGB(255, 240, 237, 237),
              activeTrackColor: Color(0xFF0DA8FF),
            ),
          ),
        ],
      ),
      onTap: () {
        onChanged(!value);
      },
    );
  }

  Widget buildSection(String title, String lineImage, bool showLeftLine) {
    return Row(
      children: [
        if (showLeftLine)
          Image.asset(lineImage,
              height: 20), // Gambar garis di kiri jika diperlukan
        SizedBox(width: 10), // Spacer antara garis dan teks
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        SizedBox(width: 10), // Spacer antara teks dan garis
        if (!showLeftLine)
          Image.asset(lineImage,
              height: 20), // Gambar garis di kanan jika diperlukan
      ],
    );
  }
}
