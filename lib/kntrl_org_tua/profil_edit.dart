import 'package:flutter/material.dart';
import 'package:mischool/main.dart';
import 'package:mischool/kntrl_org_tua/profil.dart';

class Profiledit extends StatefulWidget {
  const Profiledit({Key? key}) : super(key: key);

  @override
  State<Profiledit> createState() => _Profiledit_State();
}

class _Profiledit_State extends State<Profiledit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 52,
          ),
          // Title and Back Arrow
          Container(
            margin: EdgeInsets.only(
                left: 51), // Sesuaikan margin agar judul agak ke kiri
            child: Text(
              'Edit Profil', // Ubah judul menjadi "Profil"
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF32344D),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          // Avatar
          Center(
            child: Stack(
              children: [
                Container(
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
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                    child: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 30,
          ),
          // Text Fields
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              children: [
                SizedBox(
                  width: 289,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "NAMA",
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.blue, fontSize: 14),
                    ),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                SizedBox(
                  height: 40,
                  width: 289,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      border: Border.all(color: Colors.grey, width: 1),
                    ),
                    child: Text(
                      "Bastian",
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                SizedBox(
                  width: 289,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "ALAMAT",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.blue, fontSize: 14),
                    ),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                SizedBox(
                  height: 40,
                  width: 289,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      border: Border.all(color: Colors.grey, width: 1),
                    ),
                    child: Text(
                      "Begawan, Malang",
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                SizedBox(
                  width: 289,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "EMAIL",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.blue, fontSize: 14),
                    ),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                SizedBox(
                  height: 40,
                  width: 289,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      border: Border.all(color: Colors.grey, width: 1),
                    ),
                    child: Text(
                      "bastian223@gmail.com",
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                SizedBox(
                  width: 289,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "NOMOR TELEPON",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.blue, fontSize: 14),
                    ),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                SizedBox(
                  height: 40,
                  width: 289,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      border: Border.all(color: Colors.grey, width: 1),
                    ),
                    child: Text(
                      "0821-3487-99456",
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(
                  height: 46,
                ),
                // Tombol Kembali dan Edit Profil
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Tombol Kembali
                    InkWell(
                      onTap: () {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Profil(),
                          ),
                        ); // Tambahkan fungsi untuk tombol kembali di sini
                      },
                      child: Container(
                        height: 44,
                        width: 129,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.blue, width: 1),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Kembali',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 2), // Jarak antara tombol
                    // Tombol Edit Profil
                    InkWell(
                      onTap: () {
                        // Tambahkan fungsi untuk tombol edit profil di sini
                      },
                      child: Container(
                        height: 44,
                        width: 129,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Simpan',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
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
