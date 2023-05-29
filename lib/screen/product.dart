import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  List<dynamic> bankList = [
    {
      "image": "mandiri",
      "star": 3.0,
      "reviews": 14,
      "name": "Mandiri",
      "subname": "Bunga Special Tengah Imlek 2023",
      "fix_rate": 3.88,
      "tenor": 12,
      "loan": 1,
      "jaminan": "Ruko, Rukan, Rumah,\nApartemen",
      "target": "Karyawan, Pengusaha",
      "komisi": 1,
    },
    {
      "image": "panin",
      "star": 2.0,
      "reviews": 9,
      "name": "Panin",
      "subname": "Panin KPR & KPR XTRA",
      "fix_rate": 9.90,
      "tenor": 10,
      "loan": 85,
      "jaminan": "Ruko, Rukan, Rumah,\nApartemen",
      "target": "Karyawan, Pengusaha",
      "komisi": 1,
    },
    {
      "image": "mncbank",
      "star": 4.0,
      "reviews": 10,
      "name": "MNC",
      "subname": "MNC KPR Secondary",
      "fix_rate": 12.00,
      "tenor": 10,
      "loan": "50 - 60",
      "jaminan": "Rumah, Apartemen",
      "target": "Karyawan",
      "komisi": 1,
    },
  ];

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
            child: DefaultTabController(
              initialIndex: 0,
              length: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: width,
                    height: 0.068 * height,
                    color: Colors.white,
                    child: TabBar(
                      tabs: [
                        Tab(
                          child: Text(
                            'Bank',
                            style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Developer',
                            style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 19, bottom: 19),
                    width: width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          width: width,
                          height: 50,
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color(0xffffffff),
                              suffixIcon: const Icon(Icons.search),
                              hintText: 'Cari Nama Bank',
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 1,
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 1,
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    width: width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 130,
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF00AAE5),
                                padding: const EdgeInsets.all(12)),
                            icon: const FaIcon(FontAwesomeIcons.plus),
                            onPressed: () {},
                            label: Text(
                              'Tambah',
                              style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 130,
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFFFFFFF),
                              padding: const EdgeInsets.all(12),
                              side: const BorderSide(color: Colors.grey),
                            ),
                            icon: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                FaIcon(
                                  FontAwesomeIcons.arrowUp,
                                  color: Colors.black,
                                ),
                                FaIcon(
                                  FontAwesomeIcons.arrowDown,
                                  color: Colors.black,
                                )
                              ],
                            ),
                            onPressed: () {},
                            label: Text(
                              'Sort',
                              style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    width: width,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)),
                      child: ListTile(
                        title: Text(
                          'ALL',
                          style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        trailing: const Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: FaIcon(
                            FontAwesomeIcons.chevronDown,
                            color: Color(0xFF1BABE7),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                        top: 20, left: 15, right: 15, bottom: 15),
                    width: width,
                    height: 0.5 * height,
                    child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(
                        width: 15,
                      ),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: bankList.length,
                      itemBuilder: (context, index) => BankCard(
                        width: width,
                        data: bankList[index],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BankCard extends StatelessWidget {
  const BankCard({Key? key, required this.width, required this.data})
      : super(key: key);

  final double width;
  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width * 0.92,
      child: Card(
        elevation: 10,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 9),
              child: Image.asset('assets/img/${data["image"]}.png'),
            ),
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        'Rating :',
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            color: Color(0xFF707A83),
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      RatingBar.builder(
                        initialRating: data["star"],
                        minRating: 1,
                        direction: Axis.horizontal,
                        itemCount: 5,
                        itemPadding: const EdgeInsets.symmetric(horizontal: 0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Color(0xFF1CABE6),
                        ),
                        unratedColor: const Color(0xFFC1C1C1),
                        itemSize: 17,
                        onRatingUpdate: (rating) {},
                        ignoreGestures: true,
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        '${data["reviews"]} Reviews',
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const VerticalDivider(
                    color: Colors.black,
                    thickness: 2,
                  ),
                  Column(
                    children: [
                      Text(
                        'User :',
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            color: Color(0xFF707A83),
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        '220',
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'User yearly',
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 15,
                ),
                Text(
                  data["name"],
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      color: Color(0xFF4A5055),
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  ' ${data["subname"]}',
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      color: Color(0xFF1CABE6),
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset('assets/icon/rate.svg'),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Fix Rate (Year): ${data["fix_rate"]}',
                            style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                color: Color(0xFF4A5055),
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset('assets/icon/clock.svg'),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Max Tenor: ${data["tenor"]}',
                            style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                color: Color(0xFF4A5055),
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset('assets/icon/clock2.svg'),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Loan to Value: ${data["loan"]} %',
                            style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                color: Color(0xFF4A5055),
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset('assets/icon/shield.svg'),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Jaminan: ${data["jaminan"]}',
                            style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                color: Color(0xFF4A5055),
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset('assets/icon/user.svg'),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Target: ${data["target"]}',
                            style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                color: Color(0xFF4A5055),
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset('assets/icon/coin.svg'),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Komisi: ${data["komisi"]}',
                            style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                color: Color(0xFF4A5055),
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 15),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    side: const BorderSide(color: Colors.grey),
                    backgroundColor: const Color(0xFFFFFFFF),
                    shadowColor: Colors.grey,
                    elevation: 5),
                onPressed: () {},
                child: Text(
                  'Detail',
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      color: Color(0xFF37B5E7),
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
