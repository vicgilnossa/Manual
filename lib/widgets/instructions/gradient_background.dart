import 'package:flutter/material.dart';

class InstructionsGradientBackground extends StatelessWidget {
  final boxDecoration = const BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.2, 0.8],
          colors: [Color(0xff2f1b55), Color(0xff120b25)]));

  const InstructionsGradientBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: boxDecoration,
      ),
    ]);
  }
}
