import 'package:flutter/material.dart';
import 'package:vital/helpers/constant.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // SizedBox(
            //   height: MediaQuery.of(context).size.height,
            //   width: MediaQuery.of(context).size.width,
            //   child: Image.asset(
            //     'assets/background.png',
            //     fit: BoxFit.cover,
            //   ),
            // ),
            Container(
              margin: const EdgeInsets.only(top: 25),
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ListTile(
                    leading: CircleAvatar(backgroundColor: yellow),
                    title: Text(
                      'welcome',
                      style: TextStyle(color: black),
                    ),
                    subtitle: Text(
                      'ghazi tr',
                      style: TextStyle(color: white),
                    ),
                    trailing: CircleAvatar(
                      backgroundColor: yellow,
                      child: Icon(
                        Icons.notifications_none_outlined,
                        color: white,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: black.withOpacity(0.5),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    child: TextFormField(
                      cursorColor: white,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: yellow,
                          size: 28,
                        ),
                        suffixIcon: Icon(
                          Icons.bar_chart_outlined,
                          color: yellow,
                          size: 28,
                        ),
                        hintText: 'Search',
                        hintStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      style: const TextStyle(color: Colors.white),
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
