import 'package:flutter/material.dart';

class InstructionsMainCard extends StatelessWidget {
  const InstructionsMainCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: const Color(0xff2E305F),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        margin: const EdgeInsets.only(left: 20, right: 20),
        elevation: 10,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Column(children: <Widget>[
              const Image(image: AssetImage("assets/maincard.jpg")),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xff2c2455), Color(0xff15122d)])),
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: const [
                    Text(
                      'Congratulations and thank you for your purchase of the Planet Bike Protegé Bycicle Computer. ',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        "The Protegé represents a breakthrough in bycicle computer design and function. ",
                        style: TextStyle(color: Colors.white))
                  ],
                ),
              )
            ])));
  }
}
