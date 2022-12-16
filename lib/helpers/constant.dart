import 'package:flutter/material.dart';

Color black = Colors.black87;
Color grey = const Color(0xFF828A89);
Color yellow = const Color(0xFFC59104);
Color priceColor = const Color(0xFFF2A666);
Color blue = Colors.blue;
Color white = Colors.white;

var kTextFieldDecoration = InputDecoration(
  border: const OutlineInputBorder(),
  enabledBorder: const OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 1.0),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: yellow, width: 1.0),
  ),
  hintText: 'Enter your Message',
  labelStyle: const TextStyle(color: Colors.grey),
  hintStyle: const TextStyle(color: Colors.grey),
);
const currentUserRadius = BorderRadius.only(
  topLeft: Radius.circular(30),
  bottomLeft: Radius.circular(30),
  bottomRight: Radius.circular(30),
);
const otherUsersRadius = BorderRadius.only(
  topRight: Radius.circular(30),
  bottomLeft: Radius.circular(30),
  bottomRight: Radius.circular(30),
);
