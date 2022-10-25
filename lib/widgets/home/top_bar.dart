import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:frontend_design/services/auth_service.dart';
import 'package:provider/provider.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context, listen: false);
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
                  authService.logout();
                  Navigator.pushReplacementNamed(context, "login");
                },
                icon: const FaIcon(
                  FontAwesomeIcons.rightToBracket,
                  color: Color(0xffa7a6a7),
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
                icon: const FaIcon(
                  FontAwesomeIcons.sliders,
                  color: Color(0xffa7a6a7),
                  size: 25,
                )),
          ),
        ],
      ),
    );
  }
}
