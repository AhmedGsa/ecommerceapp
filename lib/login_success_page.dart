import 'package:ecommerceapp/custom_classes.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class LoginSuccessPage extends StatefulWidget {
  @override
  State<LoginSuccessPage> createState() => _LoginSuccessPageState();
}

class _LoginSuccessPageState extends State<LoginSuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Login Success",
          style: TextStyle(color: textColor),
        ),
        elevation: 0,
        leading: SizedBox(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image(image: AssetImage("assets/images/success.png")),
            Text(
              "Login Success",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            OrangeButton(onTap: () {}, text: "Back to home",width: 250,),
          ],
        ),
      ),
    );
  }
}
