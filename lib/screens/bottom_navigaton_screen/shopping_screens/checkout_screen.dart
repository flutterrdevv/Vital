import 'package:flutter/material.dart';
import 'package:vital/helpers/screen_navigation.dart';
import 'package:vital/screens/bottom_navigaton_screen/shopping_screens/success_screen.dart';
import 'package:vital/widgets/custom_button.dart';
import 'package:vital/widgets/custom_text.dart';
import '../../../helpers/constant.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({
    super.key,
  });

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
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
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/address.png',
                          height: MediaQuery.of(context).size.height / 3,
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    height: MediaQuery.of(context).size.height / 3,
                    child: SingleChildScrollView(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CustomText(
                              text: 'Payment Method',
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            ListTile(
                              leading: Image.asset(
                                'assets/images/debit.png',
                                height: 50,
                                width: 50,
                              ),
                              title: Text(
                                'Debit Card',
                                style: TextStyle(
                                    color: black, fontWeight: FontWeight.bold),
                              ),
                            ),
                            ListTile(
                              leading: Image.asset(
                                'assets/images/paypal.png',
                                height: 50,
                                width: 50,
                              ),
                              title: Text(
                                'Paypal',
                                style: TextStyle(
                                    color: black, fontWeight: FontWeight.bold),
                              ),
                            ),
                            ListTile(
                              leading: Image.asset(
                                'assets/images/apple.png',
                                height: 50,
                                width: 50,
                              ),
                              title: Text(
                                'Apple pay',
                                style: TextStyle(
                                    color: black, fontWeight: FontWeight.bold),
                              ),
                            ),
                            ListTile(
                              leading: Image.asset(
                                'assets/images/all.png',
                                height: 50,
                                width: 50,
                              ),
                              title: Text(
                                'All methods',
                                style: TextStyle(
                                    color: black, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ]),
                    ),
                  ),
                  Container(
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomText(
                          text: 'Amount',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: 'item total',
                              color: grey,
                            ),
                            CustomText(text: '\$235', color: priceColor)
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: 'Delivery fee',
                              color: grey,
                            ),
                            CustomText(text: '\$100', color: priceColor)
                          ],
                        ),
                        Divider(
                          color: grey,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: 'total',
                              color: white,
                            ),
                            CustomText(text: '\$100', color: priceColor)
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: CustomButton(
                            buttonName: 'Payment',
                            textColor: white,
                            function: () =>
                                changeScreen(context, SuccessScreen()),
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
