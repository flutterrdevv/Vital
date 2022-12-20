import 'package:flutter/material.dart';
import 'package:vital/widgets/custom_text.dart';
import '../../../helpers/constant.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({
    super.key,
  });

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
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
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomText(
                    size: 22,
                    text: 'Recently Search',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset('assets/images/recent.png')
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
