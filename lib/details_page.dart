import 'package:ecommerceapp/custom_classes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'constants.dart';

class DetailsPage extends StatefulWidget {
  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int selectedPic = 1;
  int selectedColor = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: TextButton(
                        style: TextButton.styleFrom(
                            shape: CircleBorder(),
                            backgroundColor: Colors.white),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: SvgPicture.asset("assets/icons/Back ICon.svg")),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Row(
                      children: [
                        Text(
                          "4.5",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        SvgPicture.asset("assets/icons/Star Icon.svg")
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white),
                  )
                ],
              ),
            ),
            Image.asset(
              "assets/images/ps4_console_white_$selectedPic.png",
              height: 150,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PictureCard(
                    img: "ps4_console_white_1.png",
                    num: 1,
                    selectedPic: selectedPic,
                    onTap: () {
                      setState(() {
                        selectedPic = 1;
                      });
                    },
                  ),
                  PictureCard(
                    img: "ps4_console_white_2.png",
                    num: 2,
                    selectedPic: selectedPic,
                    onTap: () {
                      setState(() {
                        selectedPic = 2;
                      });
                    },
                  ),
                  PictureCard(
                    img: "ps4_console_white_3.png",
                    num: 3,
                    selectedPic: selectedPic,
                    onTap: () {
                      setState(() {
                        selectedPic = 3;
                      });
                    },
                  ),
                  PictureCard(
                    img: "ps4_console_white_4.png",
                    num: 4,
                    selectedPic: selectedPic,
                    onTap: () {
                      setState(() {
                        selectedPic = 4;
                      });
                    },
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: Colors.white),
                child: Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Wireless Controller for PS4",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "TM",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(25, 15, 20, 15),
                                  decoration: BoxDecoration(
                                      color: Color(0xFFF7DFDF),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          bottomLeft: Radius.circular(20))),
                                  child: SvgPicture.asset(
                                    "assets/icons/Heart Icon_2.svg",
                                    color: Color(0xffF74A4A),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 113),
                              child: Text(
                                randomText,
                                style: TextStyle(color: textColor),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  "See More Detail",
                                  style: TextStyle(
                                      color: orange,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                SvgPicture.asset(
                                  "assets/icons/arrow_right.svg",
                                  color: orange,
                                  height: 10,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30)),
                            color: Color(0xFFF5F6F9)),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 15, 20, 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ColorSelector(
                                          color: Color(0xFFEE625E),
                                          selectedColor: selectedColor,
                                          num: 1,
                                          onTap: () {
                                            setState(() {
                                              selectedColor = 1;
                                            });
                                          },
                                        ),
                                        ColorSelector(
                                          color: Color(0xFF816CB3),
                                          selectedColor: selectedColor,
                                          num: 2,
                                          onTap: () {
                                            setState(() {
                                              selectedColor = 2;
                                            });
                                          },
                                        ),
                                        ColorSelector(
                                          color: Color(0xFFD7C599),
                                          selectedColor: selectedColor,
                                          num: 3,
                                          onTap: () {
                                            setState(() {
                                              selectedColor = 3;
                                            });
                                          },
                                        ),
                                        ColorSelector(
                                          color: Color(0xFFFFFFFF),
                                          selectedColor: selectedColor,
                                          num: 4,
                                          onTap: () {
                                            setState(() {
                                              selectedColor = 4;
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        SizedBox(
                                          height: 50,
                                          width: 50,
                                          child: TextButton(
                                              style: TextButton.styleFrom(
                                                  shape: CircleBorder(),
                                                  backgroundColor:
                                                      Colors.white),
                                              onPressed: () {},
                                              child: SvgPicture.asset(
                                                  "assets/icons/remove.svg")),
                                        ),
                                        SizedBox(
                                          height: 50,
                                          width: 50,
                                          child: TextButton(
                                              style: TextButton.styleFrom(
                                                  shape: CircleBorder(),
                                                  backgroundColor:
                                                      Colors.white),
                                              onPressed: () {},
                                              child: SvgPicture.asset(
                                                  "assets/icons/Plus Icon.svg")),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 60, vertical: 12),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30)),
                                  color: Colors.white),
                              child: OrangeButton(
                                  onTap: () {}, text: "Add to cart"),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ColorSelector extends StatelessWidget {
  ColorSelector(
      {required this.color,
      required this.num,
      required this.selectedColor,
      required this.onTap});
  final Color color;
  int num;
  int selectedColor;
  VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
                color: num == selectedColor ? orange : Colors.transparent)),
        child: CircleAvatar(
          backgroundColor: color,
          radius: 15,
        ),
      ),
    );
  }
}

class PictureCard extends StatelessWidget {
  PictureCard(
      {required this.img,
      required this.num,
      required this.selectedPic,
      required this.onTap});
  final String img;
  int num;
  int selectedPic;
  VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(3),
        height: 55,
        width: 55,
        decoration: BoxDecoration(
            border: Border.all(
                color: num == selectedPic ? orange : Colors.transparent),
            borderRadius: BorderRadius.circular(10),
            color: Colors.white),
        child: Image.asset(
          "assets/images/$img",
        ),
      ),
    );
  }
}
