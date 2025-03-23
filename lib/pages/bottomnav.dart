import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:packagedeliveryapp/pages/home.dart';
import 'package:packagedeliveryapp/pages/order.dart';
import 'package:packagedeliveryapp/pages/profile.dart';
import 'package:packagedeliveryapp/pages/wallet.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  late List<Widget> pages;

  late Home home;
  late Order order;
  late Wallet wallet;
  late Profile profile;

  int currentTabIndex = 0;

  @override
  void initState() {
    home = Home();
    order = Order();
    wallet = Wallet();
    profile = Profile();

    pages = [home, order, wallet, profile];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 70,
        backgroundColor: Colors.white,
        color: Color(0xffef2b39),
        animationDuration: Duration(milliseconds: 500),
        onTap: (int index) {
          setState(() {
            currentTabIndex = index; // Corrected this line
          });
        },
        items: [
          Icon(Icons.home, color: Colors.white, size: 30),
          Icon(Icons.shopping_bag, color: Colors.white, size: 30),
          Icon(Icons.wallet, color: Colors.white, size: 30),
          Icon(Icons.person, color: Colors.white, size: 30),
        ],
      ),
      body: pages[currentTabIndex],
    );
  }
}