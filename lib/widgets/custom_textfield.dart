import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

import '../../helpers/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      required this.icon,
      required this.hint,
      required this.label,
      required this.controller,
      this.textInputAction,
      this.suffixIcon})
      : super(key: key);
  final String hint;
  final String label;
  final IconData icon;
  final IconData? suffixIcon;
  final TextEditingController controller;
  final TextInputAction? textInputAction;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: yellow,
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      padding: const EdgeInsets.symmetric(horizontal: 5),
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        cursorColor: white,
        decoration: InputDecoration(
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          // prefixIcon: Icon(
          //   icon,
          //   color: Colors.grey,
          // ),
          // suffixIcon: Icon(
          //   suffixIcon,
          //   color: Colors.grey,
          // ),
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.white, fontSize: 15),
        ),
        style: const TextStyle(color: Colors.white),
        controller: controller,
        textInputAction: textInputAction ?? TextInputAction.done,
        // autovalidateMode: label == 'Email' ||
        //         label == 'Password' ||
        //         label == 'Name' ||
        //         label == 'User Name'
        //     ? AutovalidateMode.onUserInteraction
        //     : AutovalidateMode.disabled,
        // validator: label == 'Email'
        //     ? (email) => email != null && !EmailValidator.validate(email)
        //         ? 'Enter a valid Email'
        //         : null
        //     : label == 'Password'
        //         ? (password) => password != null && password.length < 6
        //             ? 'Enter min 6 characters'
        //             : null
        //         : null
      ),
    );
  }
}
