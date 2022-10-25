import 'package:flutter/material.dart';

class ScrollDesignScreen extends StatelessWidget {
  const ScrollDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xfff6d7dc),
        body: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: const [
            Page1(),
            Page2(),
          ],
        ));
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        Background(),
        MainContent(),
      ],
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        fontSize: 60, color: Colors.white, fontWeight: FontWeight.bold);
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Column(
        children: [
          const Text(
            "11°",
            style: textStyle,
          ),
          const Text(
            "Miércoles",
            style: textStyle,
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.keyboard_arrow_down,
            color: Colors.white,
            size: 100,
          )
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xfff6d7dc),
        height: double.infinity,
        alignment: Alignment.topCenter,
        child: const Image(
            image: NetworkImage(
                'https://i.pinimg.com/736x/82/c3/f1/82c3f19798b7f7e5168458b0adaf8a69.jpg')));
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xfff6d7dc),
      child: Center(
        child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 248, 137, 156),
              shape: const StadiumBorder(),
            ),
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "Bienvenido",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            )),
      ),
    );
  }
}
