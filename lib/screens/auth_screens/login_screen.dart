import 'package:flutter/material.dart';
import 'package:vital/helpers/constant.dart';
import 'package:vital/helpers/screen_navigation.dart';
import 'package:vital/screens/auth_screens/register_screen.dart';
import 'package:vital/screens/bottom_navigaton_screen/bottom_navigation_screen.dart';
import 'package:vital/screens/bottom_navigaton_screen/home_screens/home_screen.dart';
import 'package:vital/widgets/bordered_text_field.dart';
import 'package:vital/widgets/custom_text.dart';
import 'package:vital/widgets/custom_textfield.dart';
import '../../../widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
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
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    child: Image.asset('assets/auth/icon.png'),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Image.asset('assets/auth/welcome.png'),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5),
                    child: CustomText(
                      text: 'Email',
                      color: white,
                      weight: FontWeight.normal,
                      size: 15,
                    ),
                  ),
                  CustomTextField(
                      icon: Icons.email_outlined,
                      hint: ' Enter your email',
                      label: 'Email',
                      controller: emailController),
                  Container(
                    margin: const EdgeInsets.only(top: 5),
                    child: CustomText(
                      text: 'Password',
                      color: white,
                      weight: FontWeight.normal,
                      size: 15,
                    ),
                  ),
                  CustomTextField(
                      icon: Icons.lock,
                      hint: ' Password',
                      label: 'pass',
                      controller: passwordController),
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: CustomText(
                      text: 'Forgot Password?',
                      color: white,
                      size: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: CustomButton(
                      buttonName: 'Sign',
                      function: () =>
                          changeScreen(context, BottomNavigationScreen()),
                      width: 300,
                      height: 45,
                      textColor: white,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: CustomButton(
                      buttonName: 'Sign in with Google',
                      function: () {},
                      width: 300,
                      height: 45,
                      textColor: white,
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: 'Dont have an account?',
                        color: black,
                        size: 15,
                      ),
                      GestureDetector(
                        onTap: () => changeScreen(context, RegisterScreen()),
                        child: CustomText(
                          text: '  Sign Up for free',
                          color: yellow,
                          size: 16,
                          weight: FontWeight.bold,
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
