import 'package:flutter/material.dart';
import 'screens/coffee_home_page.dart';
import 'screens/sign_in_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pandhawa Coffee',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        fontFamily: 'Arial',
      ),
  home: const SignInPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
