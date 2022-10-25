import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:frontend_design/widgets/widgets.dart';

class InstructionsScreen extends StatefulWidget {
  const InstructionsScreen({Key? key}) : super(key: key);

  @override
  State<InstructionsScreen> createState() => _InstructionsScreenState();
}

class _InstructionsScreenState extends State<InstructionsScreen> {
  ScrollController scrollController = ScrollController();
  bool showbtn = false;
  @override
  void initState() {
    scrollController.addListener(() {
      //scroll listener
      double showoffset =
          200.0; //Back to top botton will show on scroll offset 10.0

      if (scrollController.offset > showoffset) {
        showbtn = true;
        setState(() {
          //update state
        });
      } else {
        showbtn = false;
        setState(() {
          //update state
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const Drawer(),
      floatingActionButton: AnimatedOpacity(
        duration: const Duration(milliseconds: 1000), //show/hide animation
        opacity: showbtn ? 1.0 : 0.0, //set obacity to 1 on visible, or hide
        child: FloatingActionButton(
            onPressed: () {
              scrollController.animateTo(
                  //go to top of scroll
                  0, //scroll offset to go
                  duration:
                      const Duration(milliseconds: 500), //duration of scroll
                  curve: Curves.fastOutSlowIn //scroll type
                  );
            },
            backgroundColor: const Color(0xffa7a6a7),
            child: const FaIcon(FontAwesomeIcons.caretUp)),
      ),
      body: Stack(
        children: [
          const InstructionsGradientBackground(),
          SingleChildScrollView(
            controller: scrollController,
            child: Column(children: const [
              _Spacer(
                height: 50,
              ),
              TopBar(
                icon1: FontAwesomeIcons.house,
                icon2: FontAwesomeIcons.sliders,
                route: 'home',
              ),
              _Spacer(
                height: 20,
              ),
              InstructionsTitle(),
              _Spacer(
                height: 10,
              ),
              InstructionsMainCard(),
              _Spacer(
                height: 20,
              ),
              InstructionsGradientDivider(),
              _Spacer(
                height: 20,
              ),
              InstructionsExpansionPanelParts(
                textbold: 'PARTS',
                textlight: 'LIST',
              ),
              InstructionsExpansionPanelFunctions(
                  textbold: 'FUNCTIONS',
                  textlight: '& SPECIFICATIONS',
                  img1: "assets/functions1.jpg",
                  img2: "assets/functions2.jpg",
                  img3: "assets/functions3.jpg"),
              InstructionsExpansionPanelMounting(
                textbold: 'MOUNTING',
                textlight: 'INSTRUCTIONS',
                img: "assets/mountinginstructions.jpg",
              ),
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
