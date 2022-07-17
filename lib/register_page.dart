import 'package:ecommerceapp/custom_classes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import "my_classes.dart";
import 'constants.dart';

const ColorTxt = 0xFFBFBFBF;

class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
}

FontWeight based = FontWeight.bold;

class _RegisterState extends State<Register> {
  bool val = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Sign Up",
          style: TextStyle(color: Color(ColorTxt)),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
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
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        child: ListView(
          children: [
            SizedBox(height: 0),
            Text(
              "Register Account",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            Text(
              "Complete your details or continue ",
              style: TextStyle(fontSize: 15, color: textColor),
              textAlign: TextAlign.center,
            ),
            Text(
              "with your social media",
              style: TextStyle(fontSize: 15, color: textColor),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 50),
            MyTextField(
              label: "Email",
              hint: "Enter your email",
              icon: Icons.mail_outline,
            ),
            SizedBox(
              height: 20,
            ),
            MyTextField(
                label: "Password",
                hint: "Enter your password",
                icon: Icons.lock_outline),
            SizedBox(
              height: 20,
            ),
            MyTextField(
            label: "Password",
            hint: "Enter your password",
            icon: Icons.lock_outline),
            SizedBox(height: 20),
            OrangeButton(
                onTap: () {
                  Navigator.pushNamed(context, "/profile_complete");
                },
                text: "Continue"),
            SizedBox(
              height: 20,
            ),
            Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconContainer(
              img: "google-icon.svg",
              onTap: () {},
            ),
            SizedBox(
              width: 15,
            ),
            IconContainer(
              img: "facebook-2.svg",
              onTap: () {},
            ),
            SizedBox(
              width: 15,
            ),
            IconContainer(
              img: "twitter.svg",
              onTap: () {},
            )
          ],
        ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text.rich(TextSpan(children: [
                TextSpan(
                  text: "by continuing you confirm that you agree\n",
                  style: TextStyle(
                    fontSize: 13,
                    color: textColor,
                  ),
                ),
                TextSpan(
                    text: "          With our terms and conditions",
                    style: TextStyle(
                      fontSize: 13,
                      color: textColor,
                    ))
              ])),
            ),

            //will change this to text button
          ],
        ),
      )),
    );
  }
}
