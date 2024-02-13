import 'package:flutter/material.dart';
import 'package:mischool/Guru/profil_edit.dart';

class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  State<Profil> createState() => _Profil_State();
}

class _Profil_State extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 38,
          ),
          // Title and Back Arrow
          Container(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 24), // Tambahkan Padding ke sini
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: 32,
                      color: Colors.blue,
                    ),
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
              margin: EdgeInsets.only(bottom: 10),
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
            padding: const EdgeInsets.symmetric(horizontal: 48),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nama",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.blue),
                ),
                SizedBox(
                  height: 5,
                ), // Ubah posisi teks ke tengah
                Text(
                  "Bastian",
                  textAlign: TextAlign.center,
                ), // Ubah posisi teks ke tengah
                Divider(color: Colors.black),
                SizedBox(
                  height: 10,
                ), // Divider
                Text(
                  "Alamat",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.blue),
                ),
                SizedBox(
                  height: 5,
                ), // Ubah posisi teks ke tengah
                Text(
                  "Begawan Malang",
                  textAlign: TextAlign.center,
                ), // Ubah posisi teks ke tengah
                Divider(color: Colors.black),
                SizedBox(
                  height: 10,
                ), // Divider
                Text(
                  "Email",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.blue),
                ),
                SizedBox(
                  height: 5,
                ), // Ubah posisi teks ke tengah
                Text(
                  "bastian223@gmail.com",
                  textAlign: TextAlign.center,
                ), // Ubah posisi teks ke tengah
                Divider(color: Colors.black),
                SizedBox(
                  height: 10,
                ), // Divider
                Text(
                  "Nomor",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.blue),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "0821-3487-99456",
                  textAlign: TextAlign.center,
                ),
                Divider(color: Colors.black),
                SizedBox(
                  height: 20,
                ), // Tambahkan jarak antara teks terakhir dan tombol
                Row(
                  // Menggunakan Row untuk menempatkan tombol di sebelah kanan
                  mainAxisAlignment: MainAxisAlignment.end, // Posisi kanan
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
                          color: Colors.blue, // Warna latar belakang
                          borderRadius:
                              BorderRadius.circular(8), // Border radius
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Edit Profil',
                            style: TextStyle(
                              color: Colors.white, // Warna teks
                              fontWeight: FontWeight.w900, // Ketebalan teks
                              fontSize: 12, // Ukuran teks
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
