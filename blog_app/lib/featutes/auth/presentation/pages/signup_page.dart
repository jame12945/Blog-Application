import 'package:blog_app/featutes/auth/presentation/widgets/auth_field.dart';
import 'package:blog_app/featutes/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';

//stf
class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Padding(
      padding: EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Sign Up',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
          SizedBox(height: 30),
          AuthFields(hintText: 'Name'),
          SizedBox(height: 15),
          AuthFields(hintText: 'Email'),
          SizedBox(height: 15),
          AuthFields(hintText: 'Password'),
          SizedBox(
            height: 20,
          ),
          AuthGradientButton()
        ],
      ),
    ));
  }
}
