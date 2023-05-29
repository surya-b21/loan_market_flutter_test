import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          SizedBox(
            height: height,
            width: width,
          ),
          Image.asset('assets/img/header.png'),
          Positioned(
            top: 0.17 * height,
            bottom: 0,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      border:
                          Border.all(color: const Color(0xffc1c1c1), width: 1),
                      borderRadius: BorderRadius.circular(15)),
                  width: MediaQuery.of(context).size.width * 0.9,
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 60,
                      ),
                      Text(
                        "Welcome Back",
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Yohanes Affandi (Jojo)",
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/icon/briefcase.svg'),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Loan Market Office Dev",
                                      style: GoogleFonts.inter(
                                        textStyle: const TextStyle(
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "ID:",
                                      style: GoogleFonts.inter(
                                        textStyle: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 2,
                                    ),
                                    Text(
                                      "LM9990001",
                                      style: GoogleFonts.inter(
                                        textStyle: const TextStyle(
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 8),
                              child: const VerticalDivider(
                                thickness: 2,
                                color: Colors.grey,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const FaIcon(
                                      FontAwesomeIcons.envelope,
                                      size: 13,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "it@loanmarket.co.id",
                                      style: GoogleFonts.inter(
                                        textStyle: const TextStyle(
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset('assets/icon/phone.svg'),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "6281234567890",
                                      style: GoogleFonts.inter(
                                        textStyle: const TextStyle(
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      border:
                          Border.all(color: const Color(0xffc1c1c1), width: 1),
                      borderRadius: BorderRadius.circular(15)),
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Column(
                    children: [
                      IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/icon/layers.svg',
                                  height: 40,
                                  width: 40,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Contact",
                                      style: GoogleFonts.inter(
                                        textStyle: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "41",
                                      style: GoogleFonts.inter(
                                        textStyle: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 75,
                              child: VerticalDivider(
                                thickness: 2,
                                color: Colors.grey,
                                indent: 10,
                              ),
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/icon/file.svg',
                                  height: 40,
                                  width: 40,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Loan",
                                      style: GoogleFonts.inter(
                                        textStyle: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "50",
                                      style: GoogleFonts.inter(
                                        textStyle: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      const Divider(
                        height: 1,
                        thickness: 2,
                        color: Colors.grey,
                        indent: 20,
                        endIndent: 20,
                      ),
                      IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/icon/shopping-bag.svg',
                                  height: 40,
                                  width: 40,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Product",
                                      style: GoogleFonts.inter(
                                        textStyle: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "73",
                                      style: GoogleFonts.inter(
                                        textStyle: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 1.6),
                              height: 75,
                              child: const VerticalDivider(
                                thickness: 2,
                                color: Colors.grey,
                                endIndent: 10,
                              ),
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/icon/award.svg',
                                  height: 40,
                                  width: 40,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Bank",
                                      style: GoogleFonts.inter(
                                        textStyle: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "41",
                                      style: GoogleFonts.inter(
                                        textStyle: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      border:
                          Border.all(color: const Color(0xffc1c1c1), width: 1),
                      borderRadius: BorderRadius.circular(15)),
                  width: MediaQuery.of(context).size.width * 0.9,
                  padding: const EdgeInsets.only(top: 12, bottom: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Pinjaman Disetujui",
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "2 ",
                            style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                          ),
                          Text(
                            "/ 5 Pinjaman",
                            style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 2,
                        color: Colors.grey,
                        indent: 20,
                        endIndent: 20,
                      ),
                      Text(
                        "Target",
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      Text(
                        "280%",
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                      ),
                      Text(
                        "Rp14.000.000.000 / 5.000.000.000",
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 0.115 * height,
            child: Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/img/profile.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
