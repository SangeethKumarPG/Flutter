import 'package:flutter/material.dart';
import 'package:roll_dice_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 63, 5, 120),
        body: GradientContainer(gradientColors: [
          Color.fromARGB(255, 26, 2, 80),
          Color.fromARGB(255, 140, 95, 204),
        ]),
      ),
    ),
  );
}
