import 'package:flutter/material.dart';
import 'package:vital/helpers/screen_navigation.dart';
import 'package:vital/screens/bottom_navigaton_screen/shopping_screens/checkout_screen.dart';
import 'package:vital/widgets/custom_text.dart';

import '../../../helpers/constant.dart';

class ShoppingScreen extends StatelessWidget {
  const ShoppingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              margin: const EdgeInsets.only(top: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ListTile(
                    leading: GestureDetector(
                      child: Image.asset('assets/auth/icon.png'),
                    ),
                    title: Center(
                      child: Text(
                        'Shopping',
                        style: TextStyle(
                            color: white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    trailing: CircleAvatar(
                      radius: 25,
                      backgroundColor: yellow,
                      child: Icon(
                        Icons.notifications_none_outlined,
                        color: white,
                      ),
                    ),
                  ),
                  const ShoppingCard(),
                  const ShoppingCard(),
                  const ShoppingCard(),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () => changeScreen(context, CheckoutScreen()),
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 60),
                      alignment: Alignment.bottomCenter,
                      child: Image.asset('assets/images/Card.png'),
                    ),
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

class ShoppingCard extends StatelessWidget {
  const ShoppingCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      height: 100,
      padding: const EdgeInsets.all(12),
      decoration:
          BoxDecoration(color: yellow, borderRadius: BorderRadius.circular(15)),
      child: Row(children: [
        Image.asset(
          'assets/images/1.png',
          height: 60,
          width: 60,
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            CustomText(
              text: 'Cosmetic',
              size: 14,
            ),
            CustomText(
              text: 'Packaging',
              size: 14,
            ),
            CustomText(
              text: '\$295',
              size: 14,
            ),
          ],
        )
      ]),
    );
  }
}
