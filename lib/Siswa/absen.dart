import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class absen extends StatefulWidget {
  const absen({Key? key}) : super(key: key);

  @override
  State<absen> createState() => _absen_mentorState();
}

class _absen_mentorState extends State<absen> {
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
                            child: Stack(
                              children: [
                                Image.asset(
                                  'assets/images/ia.png',
                                  height: 11,
                                  width: 16,
                                )
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
                        padding: EdgeInsets.only(left: 8, right: 8),
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
                              'Masuk',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                            Text(
                              'Pulang',
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
                        padding: EdgeInsets.only(left: 9, right: 13),
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
                            SizedBox(
                              width: 5,
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
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              '-',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                            SizedBox(
                              width: 70,
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
                        padding: EdgeInsets.only(right: 9, left: 9),
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
                            SizedBox(
                              width: 5,
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
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '07:10',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              '18:00',
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
                        padding: EdgeInsets.only(right: 9, left: 9),
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
                            SizedBox(
                              width: 5,
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
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '07:10',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              '18:00',
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
                        padding: EdgeInsets.only(right: 9, left: 9),
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
                            SizedBox(
                              width: 5,
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
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '07:10',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              '18:00',
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
                        padding: EdgeInsets.only(left: 9, right: 9),
                        height: 18,
                        width: 342,
                        color: Color.fromARGB(255, 242, 242, 242),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '10 jan 21',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                            SizedBox(
                              width: 10,
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
                            SizedBox(
                              width: 25,
                            ),
                            Text(
                              '-',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                            SizedBox(
                              width: 70,
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
                        padding: EdgeInsets.only(right: 9, left: 9),
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
                            SizedBox(
                              width: 5,
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
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '07:10',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              '18:00',
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
                        padding: EdgeInsets.only(right: 9, left: 9),
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
                            SizedBox(
                              width: 5,
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
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '07:10',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              '18:00',
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
                        padding: EdgeInsets.only(right: 9, left: 9),
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
                            SizedBox(
                              width: 5,
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
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '07:10',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              '18:00',
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
                        padding: EdgeInsets.only(right: 9, left: 9),
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
                            SizedBox(
                              width: 5,
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
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '07:10',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              '18:00',
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
                        padding: EdgeInsets.only(right: 9, left: 9),
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
                            SizedBox(
                              width: 5,
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
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '07:10',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              '18:00',
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
