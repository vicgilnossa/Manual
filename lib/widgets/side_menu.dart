import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          onTap: () {
            Navigator.pushNamed(context, "settings");
          },
          leading: const Icon(
            FontAwesomeIcons.gear,
            color: Color(0xffa7a6a7),
          ),
          title: const Text("QR READER"),
        )
      ],
    );
  }
}
