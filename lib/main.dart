//import 'package:demo/Circle.dart';
//import 'package:demo/loginPage2.dart';
// ignore_for_file: unused_import, prefer_const_constructors

import 'package:demo/07-10-2024/alertBox.dart';
import 'package:demo/07-10-2024/profile.dart';
import 'package:demo/08-10-20224/homeScreen.dart';
import 'package:demo/09-10-2024/sharedPrefrence.dart';
import 'package:demo/19-09-2024/loginPage2.dart';
import 'package:demo/19-09-2024/signupPage.dart';
import 'package:demo/LeafBord/homePage.dart';
import 'package:demo/LeafBord/signUp.dart';
import 'package:demo/LeafBord/startPage.dart';
import 'package:demo/Validation/validation.dart';
import 'package:demo/Validation/home.dart';
import 'package:demo/booking/startPage.dart';
import 'package:demo/greenHub/SignUpPage.dart';
import 'package:demo/greenHub/addPlants.dart';
import 'package:demo/greenHub/cart.dart';
import 'package:demo/greenHub/loginPage.dart';
import 'package:demo/greenHub/monstera.dart';
import 'package:demo/greenHub/products.dart';
// import 'package:demo/homePage.dart';
// import 'package:demo/image.dart';
import 'package:demo/profile/profile.dart';
import 'package:demo/route_demo/homepage.dart';
import 'package:demo/toggle_button/togglebutton.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: debugHighlightDeprecatedWidgets = true,
      ),
      // home: LoginPage(),
      // home: SignUpPage(),
      // home: Products(),
      // home:Monstera(),
      // home: Cart(),
      // home: AddPlants(),
      home: ColorSelect(),
    );
  }
}
