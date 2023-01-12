import 'package:e_commerce/screens/home_page.dart';
import 'package:e_commerce/screens/home_view.dart';
import 'package:e_commerce/screens/login_page.dart';
import 'package:e_commerce/screens/signup_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}