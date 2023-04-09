import 'dart:async';
import 'dart:math';

import 'package:animal_data/views/modals/global.dart';
import 'package:animal_data/views/screens/categories_page.dart';
import 'package:flutter/material.dart';

class splash_screen_paeg extends StatefulWidget {
  const splash_screen_paeg({Key? key}) : super(key: key);

  @override
  State<splash_screen_paeg> createState() => _splash_screen_paegState();
}

class _splash_screen_paegState extends State<splash_screen_paeg> {
  splash_screen() {
    Timer(
      const Duration(seconds: 3),
      () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const Category_page(),
        ),
      ),
    );
  }

  final Random random = Random();
  var r;
  void splash() {
    final random = Random();
    var keys = animal.map.keys.toList();
    var element = keys[random.nextInt(keys.length)];
    r = animal.map[element];
  }

  @override
  void initState() {
    super.initState();
    splash_screen();
    splash();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            height: 200,
            width: 350,
            child: Image.asset(
              r,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 50,
            width: 200,
            child: const Text(
              "Animal Book",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
