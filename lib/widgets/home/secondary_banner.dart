import 'package:flutter/material.dart';

class HomeSecondaryBanner extends StatelessWidget {
  const HomeSecondaryBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
      ),
      child:
          Container(width: double.infinity, height: 300, color: Colors.orange),
    );
  }
}
