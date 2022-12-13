import 'package:flutter/material.dart';
import 'package:vital/screens/bottom_navigaton_screen/bottom_navigation_screen.dart';
import 'package:vital/screens/onboard_screens/onboard1_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vital',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BottomNavigationScreen(),
    );
  }
}
