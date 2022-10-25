import 'dart:io';

import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        body: Column(
      children: [
        const FadeInImage(
            placeholder: NetworkImage(
                "https://img.freepik.com/premium-vector/meadows-landscape-with-mountains-hill_104785-943.jpg?w=2000"),
            image: NetworkImage(
                "https://img.freepik.com/premium-vector/meadows-landscape-with-mountains-hill_104785-943.jpg?w=2000")),
        const Title(),
        const SizedBox(
          height: 50,
        ),
        const IconButtons(),
        const SizedBox(height: 50),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Container(
            child: const Text(
                "Ipsum fugiat sit quis non eiusmod. Officia sit Lorem ea ea duis voluptate laboris reprehenderit aute ea non duis Lorem cupidatat. Exercitation enim et qui do incididunt mollit ea commodo cillum laborum amet laborum.Exercitation enim et qui do incididunt mollit ea commodo cillum laborum amet laborum. Exercitation enim et qui do incididunt mollit ea commodo cillum laborum amet laborum."),
          ),
        )
      ],
    ));
  }
}

class IconButtons extends StatelessWidget {
  const IconButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 60, right: 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          IconButton(icon: Icons.call, text: "CALL"),
          IconButton(icon: Icons.near_me, text: "ROUTE"),
          IconButton(icon: Icons.share, text: "SHARE"),
        ],
      ),
    );
  }
}

class IconButton extends StatelessWidget {
  final String text;
  final IconData icon;
  const IconButton({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.blue),
        )
      ],
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 50),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Oeschinen Lake Campground",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontStyle: FontStyle.normal),
              ),
              Text(
                "Kandersteg, Switzerland",
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.black38),
              )
            ],
          ),
          const SizedBox(
            width: 80,
          ),
          Row(
            children: const [Icon(Icons.star, color: Colors.red), Text("41")],
          )
        ],
      ),
    );
  }
}
