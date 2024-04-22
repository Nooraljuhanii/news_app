import 'package:flutter/material.dart';
import 'package:news_app/Screens/HomeScreen/home_page.dart';
import 'package:news_app/Screens/news_detail.dart';
// import 'package:news_app/Screens/home_page.dart';
import 'package:news_app/Screens/search_page.dart';
import 'package:news_app/Screens/notification_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
