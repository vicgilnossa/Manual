import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopBar extends StatelessWidget {
  final IconData icon1;
  final String route;
  final IconData icon2;

  const TopBar({
    Key? key,
    required this.icon1,
    required this.icon2,
    required this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              color: Color(0xff100b23),
            ),
            width: 70,
            height: 60,
            child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, route);
                },
                icon: FaIcon(
                  icon1,
                  color: const Color(0xffa7a6a7),
                  size: 25,
                )),
          ),
          Container(
            decoration: const BoxDecoration(shape: BoxShape.circle),
            width: 100,
            child: const Image(image: AssetImage("assets/logoplanetbike.png")),
          ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),
              color: Color(0xff100b23),
            ),
            width: 70,
            height: 60,
            child: IconButton(
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
                icon: FaIcon(
                  icon2,
                  color: const Color(0xffa7a6a7),
                  size: 25,
                )),
          ),
        ],
      ),
    );
  }
}
