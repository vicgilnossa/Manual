import 'dart:math';

import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CompleteDesignScreen extends StatelessWidget {
  const CompleteDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      body: Stack(
        children: [GradientBackground(), const _HomeBody()],
      ),
      bottomNavigationBar: const BottomNavbar(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [TitleAndDescription(), CardTable()],
      ),
    );
  }
}

class GradientBackground extends StatelessWidget {
  final boxDecoration = const BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.2, 0.8],
          colors: [Color(0xff2E305F), Color(0xff202333)]));

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: boxDecoration,
      ),
      const Positioned(top: -100, left: -30, child: _PinkBox())
    ]);
  }
}

class _PinkBox extends StatelessWidget {
  const _PinkBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var boxDecoration = BoxDecoration(
        borderRadius: BorderRadius.circular(80),
        gradient: const LinearGradient(colors: [
          Color.fromRGBO(236, 98, 188, 1),
          Color.fromRGBO(241, 142, 172, 1)
        ]));
    return Transform.rotate(
      angle: -pi / 5,
      child: Container(
        width: 360,
        height: 360,
        decoration: boxDecoration,
      ),
    );
  }
}
