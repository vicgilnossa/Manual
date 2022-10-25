import 'package:flutter/material.dart';
import 'package:frontend_design/screens/login.dart';
import 'package:frontend_design/screens/screens.dart';
import 'package:frontend_design/services/auth_service.dart';
import 'package:provider/provider.dart';

class CheckAuthScreen extends StatelessWidget {
  const CheckAuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context, listen: false);
    return Scaffold(
      body: Center(
          child: FutureBuilder(
        future: authService.readToken(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return Text("Espere");

          if (snapshot.data == "") {
            Future.microtask(
              () {
                Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => LoginScreen(),
                        transitionDuration: Duration(seconds: 0)));
              },
            );
          } else {
            Future.microtask(
              () {
                Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => HomeScreen(),
                        transitionDuration: Duration(seconds: 0)));
              },
            );
          }

          return Container();
        },
      )),
    );
  }
}
