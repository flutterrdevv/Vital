import 'package:flutter/material.dart';
import 'package:vital/helpers/screen_navigation.dart';
import 'package:vital/screens/bottom_navigaton_screen/bottom_navigation_screen.dart';
import 'package:vital/widgets/custom_button.dart';
import 'package:vital/widgets/custom_text.dart';
import '../../../helpers/constant.dart';

class TrackOrderScreen extends StatefulWidget {
  const TrackOrderScreen({
    super.key,
  });

  @override
  State<TrackOrderScreen> createState() => _TrackOrderScreenState();
}

class _TrackOrderScreenState extends State<TrackOrderScreen> {
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
              color: white,
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
                        'Track Order',
                        style: TextStyle(
                            color: black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image.asset('assets/images/Location.png'),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 2,
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
                        ListTile(
                            trailing: CircleAvatar(
                              backgroundColor: yellow,
                              child: const Icon(Icons.phone),
                            ),
                            title: const CustomText(
                              text: 'Mansurul',
                            ),
                            subtitle: CustomText(
                              text: 'Drive - AD 4567 km',
                              size: 12,
                              color: grey,
                            )),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Image.asset(
                            'assets/images/route.png',
                            height: 150,
                            width: 300,
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: CustomButton(
                            buttonName: 'Order Received',
                            textColor: white,
                            function: () =>
                                changeScreen(context, BottomNavigationScreen()),
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
