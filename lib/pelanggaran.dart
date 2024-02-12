import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mischool/home.dart';
import 'package:mischool/profil_edit.dart';

class Pelanggaran extends StatefulWidget {
  const Pelanggaran({Key? key}) : super(key: key);

  @override
  State<Pelanggaran> createState() => _Pelanggaran_mentorState();
}

class _Pelanggaran_mentorState extends State<Pelanggaran> {
  // Method untuk menampilkan dialog
  void _showDetailDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Center(
          child: SingleChildScrollView(
            child: Dialog(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: SizedBox(
                width: 300, // Atur lebar dialog
                height: 300, // Atur tinggi dialog
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    AppBar(
                      backgroundColor: Colors.blue,
                      automaticallyImplyLeading:
                          false, // Menghilangkan tombol back
                      title: Text(
                        'Detail Pelanggaran',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      centerTitle: true, // Memposisikan judul di tengah
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 18),
                                child: Image.asset(
                                  'assets/images/Group 89.png',
                                  height: 11,
                                  width: 3,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Nama: ',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 14,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Bastian Alexandro\n',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Kelas: ',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 14,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '2 RPL A',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 4),
                                child: Image.asset(
                                  'assets/images/Group 89.png',
                                  height: 11,
                                  width: 3,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Text(
                                  'Siswa Bastian Alexando Melanggar Sekolah Pasal 2 Ayat 3 Tentang Bolos Dan Terlambat Sekolah Pada Tanggal 9 januari 2021, Dengan ini Sekolah Mengenakan Sanksi Berupa SP 1 Kepada Siswa Bastian Alexando',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 36,
                      width: 102,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Kembali',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Stack(
                    children: [
                      Center(
                        child: Stack(
                          children: [
                            InkWell(
                              onTap: () {
                                // Kembali ke halaman sebelumnya
                                Navigator.pop(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        home(), // Menavigasi ke halaman home
                                  ),
                                );
                              },
                              child: Image.asset(
                                'assets/images/Group 57.png',
                                height: 18,
                                width: 18,
                              ),
                            ),
                            Center(
                              child: Image.asset(
                                'assets/images/logo[Mischool] 1.png',
                                height: 27,
                                width: 91,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 45,
                ),
                Container(
                  child: Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    child: Image.asset(
                                  'assets/images/Group 89.png',
                                  height: 11,
                                  width: 3,
                                )),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  child: Text(
                                    'Tingkat Pelanggaran',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 183,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    child: Image.asset(
                                  'assets/images/Group 89.png',
                                  height: 11,
                                  width: 3,
                                )),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  child: Text(
                                    'Riwayat Pelanggaran',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 16, right: 33),
                          height: 34,
                          width: 342,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromARGB(255, 242, 242, 242),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Tanggal',
                                style: GoogleFonts.poppins(
                                    fontSize: 12, fontWeight: FontWeight.w400),
                              ),
                              Container(
                                width: 90,
                                height: 34,
                                child: Stack(
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          'Jenis',
                                          style: GoogleFonts.poppins(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          'Pelanggaran',
                                          style: GoogleFonts.poppins(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Text(
                                'Detail',
                                style: GoogleFonts.poppins(
                                    fontSize: 12, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 9, left: 20),
                          height: 18,
                          width: 342,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '9 jan 21',
                                style: GoogleFonts.poppins(
                                    fontSize: 12, fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 18,
                                width: 54,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 255, 74, 74),
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                    ),
                                    Text(
                                      'SP 1',
                                      style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromARGB(255, 68, 68, 68)),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                height: 20,
                                width: 83,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(60, 132, 159, 255),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: InkWell(
                                  onTap: _showDetailDialog,
                                  child: Center(
                                    child: Text(
                                      'Tampilkan',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color:
                                            Color.fromARGB(255, 115, 187, 255),
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 9, left: 20),
                          height: 18,
                          width: 342,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '9 jan 21',
                                style: GoogleFonts.poppins(
                                    fontSize: 12, fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 18,
                                width: 54,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 115, 187, 255),
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                    ),
                                    Text(
                                      'SP 2',
                                      style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromARGB(255, 68, 68, 68)),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                height: 20,
                                width: 83,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(60, 132, 159, 255),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Text(
                                      'Tampilkan',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromARGB(
                                              255, 115, 187, 255),
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 9, left: 20),
                          height: 18,
                          width: 342,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '9 jan 21',
                                style: GoogleFonts.poppins(
                                    fontSize: 12, fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 18,
                                width: 54,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 253, 203, 23),
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                    ),
                                    Text(
                                      'Telat',
                                      style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromARGB(255, 68, 68, 68)),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                height: 20,
                                width: 83,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(60, 132, 159, 255),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Text(
                                      'Tampilkan',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromARGB(
                                              255, 115, 187, 255),
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 9, left: 20),
                          height: 18,
                          width: 342,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '9 jan 21',
                                style: GoogleFonts.poppins(
                                    fontSize: 12, fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 18,
                                width: 54,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(119, 244, 24, 1),
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                    ),
                                    Text(
                                      'Bolos',
                                      style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromARGB(255, 68, 68, 68)),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                height: 20,
                                width: 83,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(60, 132, 159, 255),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Text(
                                      'Tampilkan',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromARGB(
                                              255, 115, 187, 255),
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 9, left: 20),
                          height: 18,
                          width: 342,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '9 jan 21',
                                style: GoogleFonts.poppins(
                                    fontSize: 12, fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 18,
                                width: 54,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 227, 233, 255),
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                    ),
                                    Text(
                                      'SP 2',
                                      style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromARGB(
                                              255, 93, 136, 255)),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                height: 20,
                                width: 83,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(60, 132, 159, 255),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Text(
                                      'Tampilkan',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromARGB(
                                              255, 115, 187, 255),
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 9, left: 20),
                          height: 18,
                          width: 342,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '9 jan 21',
                                style: GoogleFonts.poppins(
                                    fontSize: 12, fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 18,
                                width: 54,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 255, 214, 205),
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                    ),
                                    Text(
                                      'SP 1',
                                      style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromARGB(255, 255, 74, 74)),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                height: 20,
                                width: 83,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(60, 132, 159, 255),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Text(
                                      'Tampilkan',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromARGB(
                                              255, 115, 187, 255),
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Title and Back Arrow
        ],
      ),
    );
  }
}
