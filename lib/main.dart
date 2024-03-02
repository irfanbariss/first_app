import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 74, 54, 131),
          Color.fromARGB(255, 45, 127, 194),
        ),
      ),
    ),
  );
}
