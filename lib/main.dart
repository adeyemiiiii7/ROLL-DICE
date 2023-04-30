import 'package:flutter/material.dart';
import 'package:dice_shuffle/gradient_container.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    body: GradientContainer(
      Color.fromARGB(255, 59, 19, 171),
      Color.fromARGB(255, 33, 5, 109),
    ),
  )));
}
