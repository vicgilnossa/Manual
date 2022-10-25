import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          SingleCard(
            color: Colors.blue,
            icon: Icons.pie_chart,
            text: 'General',
          ),
          SingleCard(
              color: Colors.purple, icon: Icons.bus_alert, text: 'Transport'),
        ]),
        TableRow(children: [
          SingleCard(
            color: Colors.pink,
            icon: Icons.file_copy,
            text: 'Files',
          ),
          SingleCard(
              color: Colors.amber, icon: Icons.gamepad, text: 'Videogames'),
        ]),
        TableRow(children: [
          SingleCard(
            color: Colors.pink,
            icon: Icons.file_copy,
            text: 'Files',
          ),
          SingleCard(
              color: Colors.amber, icon: Icons.gamepad, text: 'Videogames'),
        ]),
        TableRow(children: [
          SingleCard(
            color: Colors.pink,
            icon: Icons.file_copy,
            text: 'Files',
          ),
          SingleCard(
              color: Colors.amber, icon: Icons.gamepad, text: 'Videogames'),
        ])
      ],
    );
  }
}

class SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;
  const SingleCard(
      {Key? key, required this.icon, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, "instructions");
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              height: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromRGBO(62, 66, 107, 0.7)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: color,
                    radius: 30,
                    child: Icon(
                      icon,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Text(
                        text,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
