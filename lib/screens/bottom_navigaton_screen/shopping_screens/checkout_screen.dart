import 'package:flutter/material.dart';
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
                      children: [Image.asset('assets/images/address.png')],
                    ),
                  ),
                  const Spacer(),
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
                      children: [],
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
