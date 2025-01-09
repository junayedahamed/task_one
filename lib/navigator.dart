import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:shopping/account_page.dart';
import 'package:shopping/cart_page.dart';
import 'package:shopping/color.dart';
import 'package:shopping/faviorite_page.dart';
import 'package:shopping/home_screen.dart';

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({super.key});

  @override
  State<NavigatorPage> createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
  final List pages = [
    HomeScreen(),
    FavioritePage(),
    CartPage(),
    AccountPage(),
  ];
  static int pgnum = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pgnum],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.qr_code,
          color: primaryColor,
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: [
          Icons.home,
          Icons.favorite,
          Icons.shopping_cart,
          Icons.person,
        ],
        activeIndex: 0,
        activeColor: primaryColor,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (index) {
          setState(() {
            pgnum = index;
          });
        },
      ),
    );
  }
}
