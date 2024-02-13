import 'package:flutter/material.dart';
import 'package:mischool/Guru/home.dart';

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
          padding: EdgeInsets.only(left: 25),
          child: InkWell(
            onTap: () {
              // Kembali ke halaman sebelumnya
              Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context) => home(), // Menavigasi ke halaman home
                ),
              );
            },
            child: Icon(Icons.arrow_back, color: Colors.blue),
          ),
        ),
        title: Text(
          'Pengaturan',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 35, vertical: 5),
        children: [
          SizedBox(height: 50),
          buildSection('Akun', 'assets/images/line1.png', true),
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
          SizedBox(height: 10),
          buildSection('Notifikasi', 'assets/images/line2.png', true),
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
          SizedBox(height: 10),
          buildSection('Lainnya', 'assets/images/line3.png', true),
          Divider(),
          buildListTileWithIcon(
            title: 'Kebijakan Privasi',
            iconPath: 'assets/images/vector.png',
            width: 7,
            height: 12,
          ),
          SizedBox(height: 30),
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
                          left: 24,
                          child: Image.asset(
                            'assets/images/elipse1.png',
                            width: 14,
                            height: 12,
                          ),
                        ),
                        Positioned(
                          left: 45,
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
                SizedBox(
                    height:
                        85), // Spacer antara tombol Log Out dan gambar logo[Mischool]
                Image.asset(
                  'assets/images/logo[Mischool] 1.png', // Ganti dengan path gambar logo[Mischool]
                  height: 27, // Sesuaikan dengan tinggi gambar
                  width: 91, // Sesuaikan dengan lebar gambar
                ),
                SizedBox(
                    height: 5), // Spacer antara logo[Mischool] dan gambar teks
                Image.asset(
                  'assets/images/teks.png', // Ganti dengan path gambar teks
                  height: 16, // Sesuaikan dengan tinggi gambar
                  width: 151, // Sesuaikan dengan lebar gambar
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
              style: TextStyle(fontSize: 16),
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
              style: TextStyle(fontSize: 16),
            ),
          ),
          Transform.scale(
            scale: 0.8,
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
        if (showLeftLine) Image.asset(lineImage, height: 25),
        SizedBox(width: 5),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
