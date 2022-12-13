import 'package:flutter/material.dart';
import 'package:vital/widgets/custom_text.dart';
import '../../../helpers/constant.dart';

class ItemSelectedScreen extends StatelessWidget {
  const ItemSelectedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 25),
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ListTile(
                leading: GestureDetector(
                  child: Image.asset('assets/auth/icon.png'),
                ),
                title: Center(
                  child: Text(
                    'Profile',
                    style: TextStyle(color: white, fontWeight: FontWeight.bold),
                  ),
                ),
                trailing: CircleAvatar(
                  backgroundColor: yellow,
                  child: Icon(
                    Icons.favorite_border_rounded,
                    color: white,
                  ),
                ),
              ),
              const CircleAvatar(
                backgroundColor: Colors.white,
                radius: 40,
              ),
              const CustomText(text: 'ghazi trabisi', size: 22),
              CustomText(
                text: 'Tabilsighazi@gmail.com',
                color: grey,
                size: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
