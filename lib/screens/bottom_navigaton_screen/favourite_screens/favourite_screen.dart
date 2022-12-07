import 'package:flutter/material.dart';
import '../../../helpers/constant.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 25),
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ListTile(
                    leading: GestureDetector(
                      child: Image.asset('assets/auth/icon.png'),
                    ),
                    title: Center(
                      child: Text(
                        'Favourite',
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
                  Container(
                      padding: const EdgeInsets.all(20),
                      child: Image.asset('assets/images/Section.png'))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
