//import 'package:demo/Circle.dart';
//import 'package:demo/loginPage2.dart';
import 'package:demo/signupPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: debugHighlightDeprecatedWidgets = true,
      ),
      home: SignUp(),
    );
  }
}
