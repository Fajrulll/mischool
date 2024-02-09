import 'package:flutter/material.dart';

class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  State<Profil> createState() => _Profil_mentorState();
}

class _Profil_mentorState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Title and Back Arrow
          Container(
            child: Stack(
              children: [
                GestureDetector(
                  child: Icon(
                    Icons.arrow_back,
                    size: 32,
                    color: Color(0xFF32344D),
                  ),
                ),
                Center(
                  child: Text(
                    'Profil',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF32344D),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 70,
          ),
          // Avatar
          Center(
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              width: 130,
              height: 130,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/profil.png'),
                  // Replace 'avatar.png' with your actual image asset path
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
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Nama",
                    textAlign: TextAlign.center), // Ubah posisi teks ke tengah
                Text("halo",
                    textAlign: TextAlign.center), // Ubah posisi teks ke tengah
                SizedBox(height: 10),
                Text("Umur",
                    textAlign: TextAlign.center), // Ubah posisi teks ke tengah
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Masukkan umur',
                  ),
                ),
                SizedBox(height: 10),
                Text("Alamat",
                    textAlign: TextAlign.center), // Ubah posisi teks ke tengah
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Masukkan alamat',
                  ),
                ),
                SizedBox(height: 10),
                Text("Email",
                    textAlign: TextAlign.center), // Ubah posisi teks ke tengah
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Masukkan email',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
