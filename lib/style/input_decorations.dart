import 'package:flutter/material.dart';

class InputDecorations {
  static InputDecoration authInputDecoration({
    required final IconData icon,
    required final String hintText,
    required final String labelText,
  }) {
    return InputDecoration(
        filled: true,
        fillColor: Colors.white,
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.white,
        )),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white)),
        hintText: hintText,
        labelText: labelText,
        labelStyle: TextStyle(color: Colors.black),
        prefixIcon: Icon(
          icon,
          color: Color.fromARGB(255, 102, 81, 209),
        ));
  }
}
