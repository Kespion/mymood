import 'package:flutter/material.dart';
import 'package:my_mood/pages/login_pages/sign_in_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Mood",
      home: SignInPage()
    );
  }

}
