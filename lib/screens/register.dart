import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:frontend_design/provider/login_provider.dart';
import 'package:frontend_design/widgets/widgets.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const InstructionsGradientBackground(),
        SingleChildScrollView(
          child: Column(
            children: [
              const _RegisterLogo(),
              ChangeNotifierProvider(
                  create: (_) => LoginFormProvider(),
                  child: const RegisterInputBox()),
            ],
          ),
        )
      ],
    ));
  }
}

class _RegisterLogo extends StatelessWidget {
  const _RegisterLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 65, bottom: 20),
        width: 100,
        height: 100,
        child: const Image(
          width: 100,
          image: AssetImage("assets/logoplanetbike.png"),
        ));
  }
}
