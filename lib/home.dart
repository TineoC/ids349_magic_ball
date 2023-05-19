import 'dart:math';

import 'package:flutter/material.dart';

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _MagicBall();
}

class _MagicBall extends State<Ball> {
  final List<String> ballImages = [
    'assets/images/ball1.png',
    'assets/images/ball2.png',
    'assets/images/ball3.png',
    'assets/images/ball4.png',
    'assets/images/ball5.png',
  ];

  late Image currentImage;

  @override
  void initState() {
    super.initState();
    currentImage = Image.asset(ballImages[0]);
  }

  void getRandomImage() {
    Random random = Random();
    int index = random.nextInt(ballImages.length);
    setState(() {
      currentImage = Image.asset(ballImages[index]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: getRandomImage,
        child: SizedBox(
          width: 300,
          height: 300,
          child: currentImage,
        ),
      ),
    );
  }
}
