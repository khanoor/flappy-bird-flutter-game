import 'dart:async';

import 'package:flutter/material.dart';

import 'bird.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double birdY = 0;
  void jump() {
    Timer.periodic(const Duration(milliseconds: 50), (timer) {
      setState(() {
        birdY -= 0.05;
        print("object");
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: jump,
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  color: Colors.blue,
                  child: Center(
                    child: Stack(
                      children: [
                        MyBird(birdY: birdY),
                        // Container(
                        //   alignment: Alignment(0, birdY),
                        //   child: Container(
                        //     height: 50,
                        //     width: 50,
                        //     color: Colors.yellow,
                        //     child: Image.asset('asset/images/bird1.png'),
                        //   ),
                        // )
                      ],
                    ),
                  ),
                )),
            Expanded(
                child: Container(
              color: Colors.brown,
            )),
          ],
        ),
      ),
    );
  }
}
