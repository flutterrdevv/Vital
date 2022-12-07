import 'package:flutter/material.dart';
import 'package:vital/helpers/constant.dart';
import 'package:vital/widgets/custom_round_button.dart';
import 'package:vital/widgets/custom_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

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
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomText(
                    text: 'Special offers',
                    weight: FontWeight.normal,
                    size: 14,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: const [
                        SpecialCard(),
                        SpecialCard(),
                        SpecialCard()
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomText(
                    text: 'Most Interested',
                    weight: FontWeight.normal,
                    size: 14,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        InterestedCard(image: 'eyes'),
                        InterestedCard(
                          image: 'a',
                        ),
                        InterestedCard(image: 'eyes')
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: CustomText(
                      text: 'View all',
                      color: yellow,
                      weight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomText(
                    text: 'Popular',
                    color: black,
                    weight: FontWeight.normal,
                    size: 14,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: const [
                        PopularCard(
                          image: 'dove',
                        ),
                        PopularCard(
                          image: 'blue',
                        ),
                        PopularCard(
                          image: 'dove',
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: CustomText(
                      text: 'View all',
                      color: yellow,
                      weight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 60,
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

class InterestedCard extends StatelessWidget {
  const InterestedCard({Key? key, required this.image}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      width: 160,
      height: 230,
      padding: const EdgeInsets.all(10),
      decoration:
          BoxDecoration(color: yellow, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 80,
            child: Center(child: Image.asset('assets/images/$image.png')),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CustomText(
                text: 'Eyes closed',
                size: 14,
              ),
              IconButton(
                  onPressed: () {},
                  icon: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.shop,
                      size: 17,
                      color: yellow,
                    ),
                  ))
            ],
          ),
          const CustomText(
            text: "\$9.99",
          )
        ],
      ),
    );
  }
}

class SpecialCard extends StatelessWidget {
  const SpecialCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        'assets/images/back.png',
        height: 130,
        width: 180,
      ),
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        width: 180,
        height: 130,
        decoration: BoxDecoration(
            color: Colors.transparent, borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomText(
              text: '50 % discount',
              size: 14,
            ),
            CRoundButton(
              height: 40,
              width: 100,
              function: () {},
              text: 'shop now',
              color: yellow,
            )
          ],
        ),
      ),
    ]);
  }
}

class PopularCard extends StatelessWidget {
  const PopularCard({Key? key, required this.image}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      width: 180,
      height: 100,
      padding: const EdgeInsets.all(10),
      decoration:
          BoxDecoration(color: yellow, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Image.asset('assets/images/$image.png'),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              SizedBox(
                height: 5,
              ),
              CustomText(
                text: 'Dove',
              ),
              CustomText(
                text: '\$136.79',
              )
            ],
          )
        ],
      ),
    );
  }
}
