import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan_market/screen/contact_detail.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  List<dynamic> contact = [
    {
      "initial": "DA",
      "name": "Dea Ananda",
      "gender": "female",
      "email": "dea.ananda@gmail.com",
      "hp": "62812823772828",
    },
    {
      "initial": "VTC",
      "name": "Van Tomiko Can",
      "gender": "female",
      "email": "soundgeekid@gmail.com",
      "hp": "6281282366176",
    },
    {
      "initial": "F",
      "name": "Fajar",
      "gender": "male",
      "email": "yohannes.siregar@raywhite.co.id",
    },
    {
      "initial": "K",
      "name": "Kevin",
      "gender": "male",
      "email": "kevin123@gmail.com",
      "hp": "62081284849",
    },
    {
      "initial": "R",
      "name": "Ronaldo",
      "gender": "male",
      "email": "ronaldo123@gmail.com",
      "hp": "62821930281",
    },
    {
      "initial": "P",
      "name": "Putri",
      "gender": "female",
      "email": "putri123@gmail.com",
      "hp": "62821930281",
    },
    {
      "initial": "J",
      "name": "Johan",
      "gender": "male",
      "email": "johan123@gmail.com",
      "hp": "62821930281",
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
                            'My Contact',
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
                            'Other Contact',
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
                  Padding(
                    padding: const EdgeInsets.only(top: 19, bottom: 19),
                    child: SizedBox(
                      width: width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Flexible(
                            flex: 2,
                            child: SizedBox(
                              height: 50,
                              child: TextField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: const Color(0xffffffff),
                                  suffixIcon: const Icon(Icons.search),
                                  hintText: 'Cari Berdasarkan Nama',
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
                          ),
                          Flexible(
                            flex: 1,
                            child: SizedBox(
                              height: 50,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  side: const BorderSide(
                                    width: 1,
                                    color: Colors.black,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Tambah',
                                  style: GoogleFonts.inter(
                                    textStyle: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(right: 10, left: 10, bottom: 15),
                    width: width,
                    height: 0.6 * height,
                    child: ListView.separated(
                      separatorBuilder: (context, index) => const Padding(
                          padding: EdgeInsets.symmetric(vertical: 5)),
                      padding: EdgeInsets.zero,
                      itemCount: contact.length,
                      itemBuilder: (context, index) => CustomCard(
                        initial: contact[index]['initial'],
                        nama: contact[index]['name'],
                        gender: contact[index]['gender'],
                        email: contact[index]['email'],
                        hp: contact[index]['hp'],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String? initial;
  final String? nama;
  final String? gender;
  final String? email;
  final String? hp;
  const CustomCard(
      {Key? key, this.initial, this.nama, this.gender, this.email, this.hp})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: const BorderSide(width: 1, color: Colors.grey),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ContactDetail(),
              ),
            );
          },
          leading: Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF005274),
            ),
            child: Center(
              child: Text(
                initial ?? "-",
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nama ?? "-",
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              gender == 'male'
                  ? Row(
                      children: [
                        const Icon(Icons.male),
                        Text(
                          "Laki-Laki",
                          style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    )
                  : Row(
                      children: [
                        const Icon(Icons.female),
                        Text(
                          "Perempuan",
                          style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
              Text(
                "Karyawan | -",
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Text(
                email ?? "-",
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Text(
                hp ?? "-",
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
