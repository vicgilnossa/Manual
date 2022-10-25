import 'package:flutter/material.dart';

class InstructionsGradientDivider extends StatelessWidget {
  const InstructionsGradientDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              stops: [0.2, 0.6],
              colors: [Color(0xff2c2455), Color(0xff15122d)])),
      height: 1,
    );
  }
}
