import 'package:firebase_work/Animation%20Work/HomeScreen.dart';
import 'package:flutter/material.dart';

class firstscreen extends StatefulWidget {
  const firstscreen({super.key});

  @override
  State<firstscreen> createState() => _firstscreenState();
}

class _firstscreenState extends State<firstscreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Saphal Animation",
      home: homeScreen(),
    );
  }
}
