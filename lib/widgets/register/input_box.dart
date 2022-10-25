import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:frontend_design/services/auth_service.dart';
import 'package:provider/provider.dart';

import '../../provider/login_provider.dart';
import '../../style/input_decorations.dart';

class RegisterInputBox extends StatelessWidget {
  const RegisterInputBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _password = TextEditingController();
    TextEditingController _confirmPassword = TextEditingController();
    final loginForm = Provider.of<LoginFormProvider>(context);
    return Container(
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 223, 223, 223),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(70))),
      width: double.infinity,
      height: 654,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 80, bottom: 30),
            child: Text(
              "REGISTER!",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Form(
                key: loginForm.formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: TextFormField(
                        cursorColor: const Color(0xff2c2455),
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecorations.authInputDecoration(
                            icon: FontAwesomeIcons.solidEnvelope,
                            hintText: "name@mail.com",
                            labelText: "Email"),
                        onChanged: (value) => loginForm.email = value,
                        validator: (value) {
                          String pattern =
                              r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                          RegExp regExp = RegExp(pattern);

                          return regExp.hasMatch(value ?? "")
                              ? null
                              : "Enter a valid email";
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: TextFormField(
                        cursorColor: const Color(0xff2c2455),
                        decoration: InputDecorations.authInputDecoration(
                            icon: FontAwesomeIcons.lockOpen,
                            hintText: "**********",
                            labelText: "Password"),
                        obscureText: true,
                        controller: _password,
                        onChanged: (value) => loginForm.pass = value,
                        validator: (value) {
                          return (value != null && value.length >= 6)
                              ? null
                              : "The password must be at least 6 characters";
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: TextFormField(
                        cursorColor: const Color(0xff2c2455),
                        decoration: InputDecorations.authInputDecoration(
                            icon: FontAwesomeIcons.lock,
                            hintText: "**********",
                            labelText: "Confirm password"),
                        obscureText: true,
                        controller: _confirmPassword,
                        onChanged: (value) => loginForm.confirmpass = value,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Re enter your password";
                          }
                          if (_password.text != _confirmPassword.text) {
                            return "The password´s doesnt match";
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xff2c2455)),
                        ),
                        onPressed: () async {
                          FocusScope.of(context).unfocus();

                          final authService =
                              Provider.of<AuthService>(context, listen: false);
                          if (!loginForm.isValidForm()) return;

                          loginForm.isLoading = true;

                          final String? errorMessage = await authService
                              .createUser(loginForm.email, loginForm.pass);

                          if (errorMessage == null) {
                            Navigator.pushReplacementNamed(context, "home");
                          } else {
                            print(errorMessage);
                          }

                          loginForm.isLoading = false;
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 118, vertical: 15),
                          child:
                              Text(loginForm.isLoading ? "LOADING" : "SIGN UP"),
                        )),
                    const SizedBox(
                      height: 50,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "login");
                      },
                      child: const Text(
                        "Already have an account? Sign in!",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
