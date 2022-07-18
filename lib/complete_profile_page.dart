import 'package:ecommerceapp/constants.dart';
import 'package:ecommerceapp/custom_classes.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool checkedValue = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "Sign Up",
            style: TextStyle(color: Color(0xFFBFBFBF)),
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
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              SizedBox(height: 10),
              Text(
                "Complete Profile",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              Text(
                "Complete Your details or connect",
                style: TextStyle(color: textColor, fontSize: 15),
                textAlign: TextAlign.center,
              ),
              Text(
                "with social media",
                style: TextStyle(color: textColor, fontSize: 15),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              MyTextField(label: "First Name", hint: "Enter your first name",),
              SizedBox(
                height: 20,
              ),
              MyTextField(label: "Last Name", hint: "Enter your last name",),
              SizedBox(
                height: 20,
              ),
              MyTextField(label: "Phone Number", hint: "Enter your phone number",icon: Icons.phone,),
              SizedBox(
                height: 20,
              ),
              MyTextField(label: "Address", hint: "Enter your address",icon: Icons.home_work_outlined,),
              SizedBox(height: 30),
              OrangeButton(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, "/verify");
                  },
                  text: "Continue"),
              SizedBox(
                height: 20,
              ),
              Text(
                "By continuing You confirm that u agree",
                style: TextStyle(
                    fontSize: 13, color: textColor),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 1,
              ),
              Text(
                "with our terms and conditions",
                style: TextStyle(
                    color: textColor, fontSize: 13),
                textAlign: TextAlign.center,
              )
            ],
          ),
        )),
      ),
    );
  }
}
