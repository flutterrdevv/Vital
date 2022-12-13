import 'package:flutter/material.dart';
import 'package:vital/widgets/custom_text.dart';
import '../../../helpers/constant.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<IconData> icons = [
      Icons.person,
      Icons.wallet,
      Icons.history,
      Icons.delivery_dining,
      Icons.support,
      Icons.policy
    ];

    final List<String> titles = [
      'Profile',
      'Payment methods',
      'Order history',
      'Delivery address',
      'Support Center',
      'Legal policy'
    ];

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
                trailing: Container(
                  width: 70,
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
              Container(
                height: MediaQuery.of(context).size.height / 1.5,
                child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: yellow,
                              borderRadius: BorderRadius.circular(10)),
                          child: ListTile(
                              leading: Icon(
                                icons[index],
                                color: white,
                              ),
                              title: Text(
                                titles[index],
                                style: TextStyle(color: white),
                              )),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
