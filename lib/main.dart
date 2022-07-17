import 'package:ecommerceapp/cart_page.dart';
import 'package:ecommerceapp/complete_profile_page.dart';
import 'package:ecommerceapp/details_page.dart';
import 'package:ecommerceapp/home.dart';
import 'package:ecommerceapp/intro_page.dart';
import 'package:ecommerceapp/login_success_page.dart';
import 'package:ecommerceapp/my_classes.dart';
import 'package:ecommerceapp/password_reset_page.dart';
import 'package:ecommerceapp/profile_page.dart';
import 'package:ecommerceapp/register_page.dart';
import 'package:ecommerceapp/verify.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    routes: {
      "/":(context) => Intro(),
      "/login":(context) => LoginPage(),
      "/reset":(context) => ResetPasswordPage(),
      "/loginsuccess":(context) => LoginSuccessPage(),
      "/profile":(context) => ProfilePage(),
      "/details":(context) => DetailsPage(),
      "/home":(context) => Lobby(),
      "/verify":(context) => Verification(),
      "/cart":(context) => CartP(),
      "/register":(context) => Register(),
      "/profile_complete":(context) => Profile(),
    },
    theme: ThemeData(fontFamily: "Muli"),
  ));
}

