import 'package:flutter/material.dart';
import 'package:mischool/profil_edit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreen_mentorState();
}

class _HomeScreen_mentorState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/images/logo[Mischool] 1.png',
                        height: 27,
                        width: 91,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 29,
                ),
                Container(
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 48,
                            height: 48,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage('assets/images/profil.png'),
                                // Replace 'avatar.png' with your actual image asset path
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hi, bastian',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w600),
                              ),
                              Text(
                                'wali murid anwar',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
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
                                    'Silahkan Pilih Siswa',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  padding: EdgeInsets.only(right: 11, left: 19, top: 11),
                  height: 87,
                  width: 342,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    border: Border.all(
                      color: Color.fromARGB(255, 93, 136, 255),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ahmad Effendi',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                          const SizedBox(
                            height: 22,
                          ),
                          Text(
                            'XII Multimedia C',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '2022-2023',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 12),
                          ),
                          const SizedBox(
                            height: 22,
                          ),
                          Text(
                            'Prasetyo Nugroho',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 12),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  padding: EdgeInsets.only(right: 11, left: 19, top: 11),
                  height: 87,
                  width: 342,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    border: Border.all(
                      color: Color.fromARGB(255, 93, 136, 255),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ahmad Effendi',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                          const SizedBox(
                            height: 22,
                          ),
                          Text(
                            'XII Multimedia C',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '2022-2023',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 12),
                          ),
                          const SizedBox(
                            height: 22,
                          ),
                          Text(
                            'Prasetyo Nugroho',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 12),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
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
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  child: Text(
                                    'Peraturan Utama Sekolah ',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  'Kategori SP 1',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '• Memakai sepatu warna selain hitam',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        '• Tidak memakai seragam sesuai Jadwal',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        '• Rambut terlalu gondrong',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        '• Membawa Rokok',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        '• Membawa Kosmetik',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        '• Membawa alat senjata tajam atau sejenisnya',
                        maxLines: 1,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  'Kategori SP 2',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '• Berkelahi',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        '• Tawuran',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        '• Mabok',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        '• Memakai Narkotika',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        '• Melakukan Asusila',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        '• Mencoreng Nama Sekolah',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                    ],
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
