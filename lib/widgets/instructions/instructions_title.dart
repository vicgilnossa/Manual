import 'package:flutter/material.dart';

class InstructionsTitle extends StatelessWidget {
  const InstructionsTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      child: const Image(image: AssetImage("assets/tituloplanetbike.png")),
    );
  }
}
