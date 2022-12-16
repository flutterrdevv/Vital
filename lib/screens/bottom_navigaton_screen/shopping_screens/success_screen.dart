import 'package:flutter/material.dart';
import 'package:vital/helpers/screen_navigation.dart';
import 'package:vital/screens/bottom_navigaton_screen/bottom_navigation_screen.dart';
import 'package:vital/screens/bottom_navigaton_screen/shopping_screens/track_screen.dart';
import 'package:vital/widgets/custom_button.dart';
import 'package:vital/widgets/custom_text.dart';
import '../../../helpers/constant.dart';

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({
    super.key,
  });

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
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
          SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(top: 25),
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  ListTile(
                    leading: GestureDetector(
                      child: Image.asset('assets/auth/icon.png'),
                    ),
                    title: Center(
                      child: Text(
                        'Success',
                        style: TextStyle(
                            color: white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    // trailing: CircleAvatar(
                    //   radius: 25,
                    //   backgroundColor: yellow,
                    //   child: Icon(
                    //     Icons.notifications_none_outlined,
                    //     color: white,
                    //   ),
                    // ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 1.5,
                    alignment: Alignment.bottomCenter,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: black,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: yellow,
                          child: const Icon(
                            Icons.check,
                            size: 40,
                          ),
                        ),
                        Container(
                          child: const CustomText(
                            text: 'Thankyou for your Order',
                            size: 30,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomText(
                          color: grey,
                          text:
                              'Your order has been placed successfully! You csn track the delivery in the order',
                        ),
                        CustomButton(
                          textColor: white,
                          color: black,
                          function: () =>
                              changeScreen(context, BottomNavigationScreen()),
                          height: 45,
                          width: 300,
                          buttonName: 'Back Home',
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: CustomButton(
                            buttonName: 'Track your order',
                            textColor: white,
                            function: () =>
                                changeScreen(context, TrackOrderScreen()),
                            height: 45,
                            width: 300,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
