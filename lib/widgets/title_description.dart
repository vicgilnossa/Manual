import 'package:flutter/material.dart';

class TitleAndDescription extends StatelessWidget {
  const TitleAndDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60, left: 20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text(
          "Classify transaction",
          style: TextStyle(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          width: 250,
          child: const Text(
              "Classify this transaction into a particular category",
              style: TextStyle(fontSize: 18, color: Colors.white)),
        )
      ]),
    );
  }
}
