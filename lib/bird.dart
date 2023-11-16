import 'package:flutter/material.dart';

class MyBird extends StatelessWidget {
  final birdY;

  const MyBird({super.key, this.birdY});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(0, birdY),
      width: 50,
      height: 50,
      child: Image.asset('asset/images/bird1.png'),
    );
  }
}
