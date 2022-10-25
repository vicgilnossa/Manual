import 'package:flutter/material.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.pink,
          unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
          backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month_outlined), label: "1"),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month_outlined), label: "1"),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month_outlined), label: "1")
          ]),
    );
  }
}
