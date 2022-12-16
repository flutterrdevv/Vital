import 'package:flutter/material.dart';
import 'package:vital/widgets/custom_button.dart';
import 'package:vital/widgets/custom_text.dart';
import '../../../helpers/constant.dart';

class ItemSelectedScreen extends StatefulWidget {
  const ItemSelectedScreen(
      {super.key,
      required this.image,
      required this.name,
      required this.price});
  final String image;
  final String name;
  final String price;

  @override
  State<ItemSelectedScreen> createState() => _ItemSelectedScreenState();
}

class _ItemSelectedScreenState extends State<ItemSelectedScreen> {
  int item = 1;
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
                        ListTile(
                          leading: GestureDetector(
                            child: Image.asset('assets/auth/icon.png'),
                          ),
                          trailing: CircleAvatar(
                            radius: 25,
                            backgroundColor: yellow,
                            child: Icon(
                              Icons.favorite_border_rounded,
                              color: white,
                            ),
                          ),
                        ),
                        Image.asset(
                          'assets/images/${widget.image}.png',
                          width: MediaQuery.of(context).size.width / 2,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: widget.name,
                              size: 22,
                            ),
                            CustomText(
                              text: widget.price,
                              color: yellow,
                              size: 22,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.person,
                              color: grey,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            CustomText(
                              text: '341 seen',
                              color: grey,
                              size: 15,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Icon(
                              Icons.favorite_border,
                              color: grey,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            CustomText(
                              text: '294 Likes',
                              color: grey,
                              size: 15,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: yellow,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomText(
                          text:
                              'Anti bacterial hand soup kills up 99 percent of germs and moiturizes hands ',
                          color: grey.withOpacity(0.5),
                          size: 15,
                        ),
                      ],
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
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: (() {
                                    item != 0
                                        ? setState(() {
                                            item--;
                                          })
                                        : null;
                                  }),
                                  child: Container(
                                    height: 35,
                                    width: 35,
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        color: grey,
                                        borderRadius:
                                            BorderRadius.circular(80)),
                                    child: const Center(
                                      child: CustomText(
                                        text: '-',
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                CustomText(
                                  text: item.toString(),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                GestureDetector(
                                  onTap: (() => setState(() {
                                        item++;
                                      })),
                                  child: Container(
                                    height: 35,
                                    width: 35,
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        color: yellow,
                                        borderRadius:
                                            BorderRadius.circular(80)),
                                    child: const Center(
                                      child: CustomText(
                                        text: '+',
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            CustomText(
                                text:
                                    (int.parse(widget.price) * item).toString())
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomButton(
                          width: 300,
                          height: 45,
                          function: () => Navigator.pop(context),
                          buttonName: 'Add to cart',
                          color: yellow,
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
