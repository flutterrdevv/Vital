// ignore_for_file: avoid_print

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:vital/helpers/constant.dart';
import 'package:vital/screens/bottom_navigaton_screen/favourite_screens/favourite_screen.dart';
import 'package:vital/screens/bottom_navigaton_screen/home_screens/home_screen.dart';
import 'package:vital/screens/bottom_navigaton_screen/profile_screens/profile_screen.dart';
import 'package:vital/screens/bottom_navigaton_screen/scan_screen.dart/scan_screen.dart';
import 'package:vital/screens/bottom_navigaton_screen/shopping_screens/shopping_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);
  static String id = 'navigaationScreenId';

  @override
  State<BottomNavigationScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomNavigationScreen> {
  final PageController controller = PageController(initialPage: 0);
  var pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> buildScreens() {
      return const [
        HomeScreen(),
        FavouriteScreen(),
        ScanScreen(),
        ShoppingScreen(),
        ProfileScreen()
      ];
    }

    return Scaffold(
        extendBody: true,
        bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: Colors.transparent,
            color: Colors.black87,
            buttonBackgroundColor: yellow,
            height: 60,
            index: pageIndex,
            onTap: (index) {
              setState(() {
                pageIndex = index;
                controller.animateToPage(pageIndex,
                    duration: const Duration(milliseconds: 10),
                    curve: Curves.linearToEaseOut);
              });
            },
            items: [
              Icon(
                Icons.home,
                color: white,
              ),
              Icon(
                Icons.favorite_outline,
                color: white,
              ),
              Icon(
                Icons.qr_code_scanner,
                color: white,
              ),
              Icon(
                Icons.shopping_cart_outlined,
                color: white,
              ),
              Icon(
                Icons.person,
                color: white,
              ),
            ]),
        body: Stack(children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/background.png',
              fit: BoxFit.cover,
            ),
          ),
          PageView(
            scrollDirection: Axis.horizontal,
            controller: controller,
            onPageChanged: (index) {
              setState(() {
                pageIndex = index;
              });
            },
            children: buildScreens(),
          ),
        ]));
  }
}
