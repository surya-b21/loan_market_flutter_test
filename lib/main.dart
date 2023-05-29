import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loan_market/screen/contact.dart';
import 'package:loan_market/screen/dashboard.dart';
import 'package:loan_market/screen/product.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Loan Market',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BottomNavBar(),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = [
    const Dashboard(),
    const Contact(),
    const Product(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Container(
            width: 30,
            height: 30,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.white),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icon/settings.svg"),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            width: 30,
            height: 30,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.white),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icon/bell.svg"),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      drawer: const Drawer(),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.layers),
            label: 'Contact',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Product',
          ),
        ],
        backgroundColor: const Color(0xffffffff),
        elevation: 16,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
