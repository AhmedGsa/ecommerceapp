import 'package:ecommerceapp/login_success_page.dart';
import 'package:ecommerceapp/password_reset_page.dart';
import 'package:ecommerceapp/profile_page.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/profile",
    routes: {
      "/":(context) => LoginPage(),
      "/reset":(context) => ResetPasswordPage(),
      "/loginsuccess":(context) => LoginSuccessPage(),
      "/profile":(context) => ProfilePage(),
    },
    theme: ThemeData(fontFamily: "Muli"),
  ));
}

