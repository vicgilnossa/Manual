import 'package:flutter/material.dart';

class HomeVersionCard extends StatelessWidget {
  const HomeVersionCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              color: Color(0xff1b1539),
            ),
            width: double.infinity,
            height: 50,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 10, right: 8.0, top: 8.0, bottom: 15),
              child: Row(
                children: const [
                  Text(
                    "ABOUT",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Text(" VERSION 9.0",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ],
              ),
            )),
        Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              gradient: LinearGradient(
                  colors: [Color(0xff2c2455), Color(0xff15122d)])),
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "The new Protegé is here and comes with many custom options for your ride.",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xff2c2455)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side:
                                  const BorderSide(color: Color(0xff2c2455))))),
                  onPressed: () {
                    Navigator.pushNamed(context, "instructions");
                  },
                  child: const Text(
                    "Learn more",
                    style: TextStyle(color: Color(0xff4d83de)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
