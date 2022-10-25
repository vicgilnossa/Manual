import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:frontend_design/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const Drawer(child: SideMenu()),
      body: Stack(
        children: [
          const InstructionsGradientBackground(),
          SingleChildScrollView(
            child: Column(children: const [
              _Spacer(height: 50),
              HomeTopBar(),
              _Spacer(height: 20),
              HomeMainBanner(),
              _Spacer(height: 10),
              HomeVersionCard(),
              _Spacer(height: 20),
              HomeExpansionBuy(),
              _Spacer(height: 20),
              HomeSecondaryBanner(),
              _Spacer(height: 80),
            ]),
          )
        ],
      ),
    );
  }
}

class _Spacer extends StatelessWidget {
  final double height;
  const _Spacer({
    Key? key,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
