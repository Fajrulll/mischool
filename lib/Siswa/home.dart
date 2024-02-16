import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _home_mentorState();
}

class _home_mentorState extends State<home> {
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
                                style: GoogleFonts.poppins(
                                    fontSize: 14, fontWeight: FontWeight.w600),
                              ),
                              Text(
                                'wali murid anwar',
                                style: GoogleFonts.poppins(
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
                  height: 24,
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
                                    'Absensi Hari Ini',
                                    style: TextStyle(
                                      fontSize: 20,
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
                  height: 16,
                ),
                Container(
                  height: 80,
                  width: 342,
                  padding:
                      EdgeInsets.only(left: 16, top: 8, bottom: 8, right: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 242, 242, 242),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 5),
                            height: 64,
                            width: 54,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Color.fromARGB(255, 93, 136, 255)),
                            child: Column(
                              children: [
                                Text(
                                  'Sen',
                                  style: GoogleFonts.poppins(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  '12',
                                  style: GoogleFonts.poppins(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  'Juni',
                                  style: GoogleFonts.poppins(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            width: 60,
                            height: 40,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      padding:
                                          EdgeInsets.only(bottom: 20, left: 7),
                                      child: Text(
                                        'Masuk',
                                        style: GoogleFonts.poppins(
                                            color: Color.fromARGB(255, 0, 0, 0),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    Container(
                                        padding: EdgeInsets.only(top: 20),
                                        child: Text(
                                          '06.30 AM',
                                          style: GoogleFonts.poppins(
                                              color: Color.fromARGB(
                                                  255, 164, 164, 164),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        ))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 13),
                            width: 60,
                            height: 40,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                        bottom: 20,
                                      ),
                                      child: Text(
                                        'Pulang',
                                        style: GoogleFonts.poppins(
                                            color: Color.fromARGB(255, 0, 0, 0),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    Container(
                                        padding: EdgeInsets.only(top: 20),
                                        child: Text(
                                          '-- : --',
                                          style: GoogleFonts.poppins(
                                              color: Color.fromARGB(
                                                  255, 164, 164, 164),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        ))
                                  ],
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
                  height: 15,
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
                                    'Kehadiran',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 25,
                            width: 76,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(108, 115, 187, 255),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                Text(
                                  'Tampilkan',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromARGB(255, 93, 136, 255)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 16, right: 9),
                        height: 31,
                        width: 342,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 242, 242, 242),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Tanggal',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                            Text(
                              'Status',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                            Text(
                              'Masuk/Pulang',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 40, left: 9),
                        height: 18,
                        width: 342,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '10 jan 21',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                            const SizedBox(
                              width: 1,
                            ),
                            Container(
                              height: 18,
                              width: 54,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 255, 247, 207),
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                  ),
                                  Text(
                                    'Izin',
                                    style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFFFDCB17)),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 50,
                            ),
                            Text(
                              '-',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 21,
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 16, left: 9),
                        height: 18,
                        width: 342,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '10 jan 21',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                            Container(
                              height: 18,
                              width: 54,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 255, 214, 205),
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                  ),
                                  Text(
                                    'Telat',
                                    style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700,
                                        color:
                                            Color.fromARGB(255, 255, 74, 74)),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              '07:10 - 18:00',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 21,
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 16, left: 9),
                        height: 18,
                        width: 342,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '10 jan 21',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                            Container(
                              height: 18,
                              width: 54,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 218, 255, 242),
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                  ),
                                  Text(
                                    'Masuk',
                                    style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700,
                                        color:
                                            Color.fromARGB(255, 48, 220, 148)),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              '07:10 - 18:00',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 21,
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 16, left: 9),
                        height: 18,
                        width: 342,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '10 jan 21',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                            Container(
                              height: 18,
                              width: 54,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 218, 255, 242),
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                  ),
                                  Text(
                                    'Masuk',
                                    style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700,
                                        color:
                                            Color.fromARGB(255, 48, 220, 148)),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              '07:10 - 18:00',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 21,
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 16, left: 9),
                        height: 18,
                        width: 342,
                        color: Color.fromARGB(255, 242, 242, 242),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '10 jan 21',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                            Container(
                              height: 18,
                              width: 54,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 217, 217, 218),
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                  ),
                                  Text(
                                    '-',
                                    style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700,
                                        color: Color.fromARGB(255, 68, 68, 68)),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              '07:10 - 18:00',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 21,
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 16, left: 9),
                        height: 18,
                        width: 342,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '10 jan 21',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                            Container(
                              height: 18,
                              width: 54,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 255, 214, 205),
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                  ),
                                  Text(
                                    'Telat',
                                    style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700,
                                        color:
                                            Color.fromARGB(255, 255, 74, 74)),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              '07:10 - 18:00',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 21,
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 16, left: 9),
                        height: 18,
                        width: 342,
                        color: Color.fromARGB(255, 255, 226, 226),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '10 jan 21',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400, fontSize: 12),
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
                                    'Alfa',
                                    style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700,
                                        color:
                                            Color.fromARGB(255, 255, 214, 205)),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              '07:10 - 18:00',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 21,
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 16, left: 9),
                        height: 18,
                        width: 342,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '10 jan 21',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                            Container(
                              height: 18,
                              width: 54,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 218, 255, 242),
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                  ),
                                  Text(
                                    'Masuk',
                                    style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700,
                                        color:
                                            Color.fromARGB(255, 48, 220, 148)),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              '07:10 - 18:00',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 21,
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 16, left: 9),
                        height: 18,
                        width: 342,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '10 jan 21',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                            Container(
                              height: 18,
                              width: 54,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 218, 255, 242),
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                  ),
                                  Text(
                                    'Masuk',
                                    style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700,
                                        color:
                                            Color.fromARGB(255, 48, 220, 148)),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              '07:10 - 18:00',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 21,
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 16, left: 9),
                        height: 18,
                        width: 342,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '10 jan 21',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                            Container(
                              height: 18,
                              width: 54,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 218, 255, 242),
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                  ),
                                  Text(
                                    'Masuk',
                                    style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700,
                                        color:
                                            Color.fromARGB(255, 48, 220, 148)),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              '07:10 - 18:00',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400, fontSize: 12),
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
          // Title and Back Arrow
        ],
      ),
    );
  }
}
