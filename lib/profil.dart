import 'package:flutter/material.dart';
import 'package:mischool/profil_edit.dart';

class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  State<Profil> createState() => _Profil_mentorState();
}

class _Profil_mentorState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'), // Judul di navigasi bar
        backgroundColor: Colors.white, // Warna latar belakang navigasi bar
        elevation: 0, // Hilangkan bayangan di navigasi bar
        iconTheme: IconThemeData(color: Colors.blue), // Warna ikon di navigasi bar
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 70,
          ),
          // Avatar
          Center(
            child: Container(
              margin: EdgeInsets.only(bottom: 10),
              width: 130,
              height: 130,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/profil.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          // Text Fields
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nama",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.blue),
                ),
                SizedBox(height: 5),
                Text("Bastian", textAlign: TextAlign.center),
                Divider(color: Colors.black),
                SizedBox(height: 10),
                Text(
                  "Alamat",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.blue),
                ),
                SizedBox(height: 5),
                Text("Begawan Malang", textAlign: TextAlign.center),
                Divider(color: Colors.black),
                SizedBox(height: 10),
                Text(
                  "Email",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.blue),
                ),
                SizedBox(height: 5),
                Text("bastian223@gmail.com", textAlign: TextAlign.center),
                Divider(color: Colors.black),
                SizedBox(height: 10),
                Text(
                  "Nomor",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.blue),
                ),
                SizedBox(height: 5),
                Text("0821-3487-99456", textAlign: TextAlign.center),
                Divider(color: Colors.black),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Profiledit(),
                          ),
                        );
                      },
                      child: Container(
                        height: 34,
                        width: 99,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Edit Profil',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
