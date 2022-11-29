import 'package:flutter/material.dart';
import 'package:vital/helpers/constant.dart';
import 'package:vital/helpers/screen_navigation.dart';
import 'package:vital/screens/auth_screens/login_screen.dart';
import 'package:vital/screens/bottom_navigaton_screen/bottom_navigation_screen.dart';
import 'package:vital/screens/bottom_navigaton_screen/home_screens/home_screen.dart';
import 'package:vital/widgets/bordered_text_field.dart';
import 'package:vital/widgets/custom_text.dart';
import 'package:vital/widgets/custom_textfield.dart';
import '../../../widgets/custom_button.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();

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
                    height: 20,
                  ),
                  Image.asset(
                    'assets/auth/create.png',
                    height: 80,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5),
                    child: CustomText(
                      text: 'Full Name',
                      color: white,
                      weight: FontWeight.normal,
                      size: 15,
                    ),
                  ),
                  CustomTextField(
                      icon: Icons.lock,
                      hint: ' Full Name',
                      label: 'pass',
                      controller: nameController),
                  Container(
                    margin: const EdgeInsets.only(top: 5),
                    child: CustomText(
                      text: 'Email',
                      color: white,
                      size: 15,
                      weight: FontWeight.normal,
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
                      weight: FontWeight.normal,
                      text: 'Password',
                      color: white,
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
                  const SizedBox(
                    height: 40,
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
                      buttonName: 'Sign up with Google',
                      function: () {},
                      width: 300,
                      height: 45,
                      textColor: white,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: 'Already have an account?',
                        color: black,
                        size: 15,
                      ),
                      GestureDetector(
                        onTap: () => changeScreen(context, LoginScreen()),
                        child: CustomText(
                          text: '  Sign In',
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
