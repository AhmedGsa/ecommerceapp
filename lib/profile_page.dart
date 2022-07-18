import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'constants.dart';
import 'custom_classes.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Profile",
          style: TextStyle(color: textColor),
        ),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    radius: 70,
                    backgroundImage:
                        AssetImage("assets/images/Profile Image.png"),
                  ),
                  IconContainer(
                    img: "Camera Icon.svg",
                    onTap: () {},
                    padding: EdgeInsets.all(7),
                    height: 45,
                    width: 45,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              CustomCardButton(
                text: "My Account",
                icon: "User Icon.svg",
                onTap: () {},
              ),
              SizedBox(
                height: 15,
              ),
              CustomCardButton(
                  icon: "Bell.svg", text: "Notifications", onTap: () {}),
              SizedBox(
                height: 15,
              ),
              CustomCardButton(
                  icon: "Settings.svg", text: "Settings", onTap: () {}),
              SizedBox(
                height: 15,
              ),
              CustomCardButton(
                  icon: "Question mark.svg", text: "Help Center", onTap: () {}),
              SizedBox(
                height: 15,
              ),
              CustomCardButton(
                  icon: "Log out.svg", text: "Log Out", onTap: () {}),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        height: 75,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BottumBarButtton(
              icon: "Shop Icon.svg",
              onTap: () {
                Navigator.pushReplacementNamed(context, "/home");
              },
              isSelected: false,
            ),
            BottumBarButtton(
              icon: "Heart Icon.svg",
              onTap: () {},
              isSelected: false,
            ),
            BottumBarButtton(
              icon: "Chat bubble Icon.svg",
              onTap: () {},
              isSelected: false,
            ),
            BottumBarButtton(
              icon: "User Icon.svg",
              onTap: () {},
              isSelected: true,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCardButton extends StatelessWidget {
  CustomCardButton(
      {required this.icon, required this.text, required this.onTap});
  String icon;
  String text;
  VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              "assets/icons/$icon",
              color: orange,
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
                child: Text(
              text,
              style: TextStyle(
                  fontSize: 15, fontWeight: FontWeight.w600, color: textColor),
            )),
            SvgPicture.asset(
              "assets/icons/arrow_right.svg",
              color: textColor,
            ),
          ],
        ),
      ),
      onTap: onTap,
    );
  }
}
