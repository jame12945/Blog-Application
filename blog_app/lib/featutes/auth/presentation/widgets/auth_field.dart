import 'package:flutter/material.dart';

//reusable authfield logic like: use 1 component similar other different placeholder and  controller.
class AuthFields extends StatelessWidget {
  //pass hintText by constructor
  final String hintText;
  const AuthFields({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
      hintText: hintText,
    ));
  }
}
