import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../../custom_expansion_tile.dart';

class InstructionsExpansionPanelMounting extends StatelessWidget {
  final String textbold;
  final String textlight;
  final String img;
  const InstructionsExpansionPanelMounting(
      {Key? key,
      required this.textbold,
      required this.textlight,
      required this.img})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 20, left: 30, right: 30),
        child: Container(
          decoration: BoxDecoration(
              border: const GradientBoxBorder(
                  gradient: LinearGradient(
                      colors: [Color(0xff583692), Color(0xff15112e)])),
              gradient: const LinearGradient(
                  colors: [Color(0xff2c2455), Color(0xff15122d)]),
              borderRadius: BorderRadius.circular(20)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    CustomExpansionTile(
                        trailing: const Icon(
                          Icons.arrow_drop_down_rounded,
                          size: 40,
                          color: Colors.white,
                        ),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              textbold,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              textlight,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 18),
                            )
                          ],
                        ),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(image: AssetImage(img))),
                          )
                        ])
                  ],
                )),
          ),
        ));
  }
}
