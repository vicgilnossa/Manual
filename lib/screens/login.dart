import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:frontend_design/provider/login_provider.dart';
import 'package:frontend_design/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const InstructionsGradientBackground(),
        SingleChildScrollView(
          child: Column(
            children: [
              const _LoginLogo(),
              const SizedBox(
                height: 40,
              ),
              ChangeNotifierProvider(
                  create: (_) => LoginFormProvider(),
                  child: const LoginInputBox()),
            ],
          ),
        )
      ],
    ));
  }
}

class _LoginLogo extends StatelessWidget {
  const _LoginLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 92),
        width: 100,
        height: 100,
        child: const Image(
          image: AssetImage("assets/logoplanetbike.png"),
        ));
  }
}
