import 'package:firebase_work/Animation%20Work/Title.dart';
import 'package:firebase_work/Animation%20Work/loadlist.dart';
import 'package:flutter/material.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: double.infinity,
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("lib/photos/bg.png"),
          fit: BoxFit.fitWidth,
          alignment: Alignment.topLeft,
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            title(),
            SizedBox(
              height: 40.0,
            ),
            SizedBox(height: 110.0),
            //
            loadlistt(),
          ],
        ),
      ),
    );
  }
}
