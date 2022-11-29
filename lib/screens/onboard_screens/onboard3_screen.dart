import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:vital/screens/auth_screens/login_screen.dart';
import 'package:vital/screens/bottom_navigaton_screen/home_screens/home_screen.dart';
import 'package:vital/widgets/custom_button.dart';

import '../../helpers/constant.dart';
import '../../helpers/screen_navigation.dart';

class OnBoardScreen3 extends StatelessWidget {
  const OnBoardScreen3({super.key});

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
                Image.asset('assets/onboarding/3.png'),
                CustomButton(
                  buttonName: 'Get Started',
                  function: () {
                    changeScreen(context, LoginScreen());
                  },
                  textColor: white,
                  width: MediaQuery.of(context).size.width - 40,
                  height: 55,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
