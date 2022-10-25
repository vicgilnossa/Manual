import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gradient_borders/gradient_borders.dart';

import '../../custom_expansion_tile.dart';

class HomeExpansionBuy extends StatelessWidget {
  const HomeExpansionBuy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Container(
        decoration: BoxDecoration(
            border: const GradientBoxBorder(
                gradient: LinearGradient(
                    colors: [Color(0xff583692), Color(0xff15112e)])),
            gradient: const LinearGradient(
                colors: [Color(0xff2c2455), Color(0xff15122d)]),
            borderRadius: BorderRadius.circular(20)),
        child: CustomExpansionTile(
          leading: Container(
            margin: const EdgeInsets.only(top: 5),
            child: const Text(
              "BUY",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          subtitle: Transform.translate(
            offset: const Offset(-11, -17),
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              child: const Text(
                "NOW",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          title: Transform.translate(
            offset: const Offset(80, 16),
            child: const Icon(Icons.abc),
          ),
          trailing: const Icon(
            Icons.arrow_drop_down_rounded,
            size: 40,
            color: Colors.white,
          ),
          children: const [Text("Hola Mundos")],
        ),
      ),
    );
  }
}
