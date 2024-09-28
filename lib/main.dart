import 'package:animations/AnimatedContainer.dart';
import 'package:animations/FadeTransition.dart';
import 'package:animations/Rotat.dart';
import 'package:animations/ScaleTransition.dart';
import 'package:animations/SlideTransition.dart';
import 'package:animations/tween.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:TweenTransitionDemo(),
    );
  }
}
     