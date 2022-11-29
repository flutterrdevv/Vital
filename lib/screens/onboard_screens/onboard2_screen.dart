import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:vital/screens/auth_screens/login_screen.dart';
import 'package:vital/screens/bottom_navigaton_screen/home_screens/home_screen.dart';
import 'package:vital/screens/onboard_screens/onboard3_screen.dart';

import '../../helpers/constant.dart';
import '../../helpers/screen_navigation.dart';

class OnBoardScreen2 extends StatelessWidget {
  const OnBoardScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/background.png',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 60),
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/onboarding/2.png'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => changeScreen(context, LoginScreen()),
                      child: Text(
                        'Skip',
                        style: TextStyle(color: grey),
                      ),
                    ),
                    GestureDetector(
                      onTap: () =>
                          changeScreen(context, const OnBoardScreen3()),
                      child: CircleAvatar(
                          radius: 25,
                          backgroundColor: yellow,
                          child: const Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.white,
                          )),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
