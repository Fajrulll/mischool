import 'package:flutter/material.dart';
import 'package:mischool/home.dart';

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.blue),
          onPressed: () {
            Navigator.pop(
                context, MaterialPageRoute(builder: (context) => home()));
          },
        ),
        title: Text(
          'Pengaturan',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          SizedBox(height: 10),
          Text(
            'Akun',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Divider(),
          ListTile(
            title: Text('Profil'),
            onTap: () {
              // Navigate to profile page
            },
          ),
          ListTile(
            title: Text('Ubah Kata Sandi'),
            onTap: () {
              // Navigate to change password page
            },
          ),
          SizedBox(height: 20),
          Text(
            'Notifikasi',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Divider(),
          ListTile(
            title: Text('Notifikasi'),
            onTap: () {
              // Navigate to notification settings page
            },
          ),
          ListTile(
            title: Text('Notifikasi Aplikasi'),
            onTap: () {
              // Navigate to app notification settings page
            },
          ),
          SizedBox(height: 20),
          Text(
            'Lainnya',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Divider(),
          ListTile(
            title: Text('Kebijakan Privasi'),
            onTap: () {
              // Navigate to privacy policy page
            },
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              // Perform logout action
            },
            child: Text('Log Out'),
          ),
        ],
      ),
    );
  }
}
