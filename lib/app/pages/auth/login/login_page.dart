import 'package:appalbumcopa/app/core/ui/styles/colors_app.dart';
import 'package:flutter/material.dart';

class LoginHome extends StatefulWidget {
  const LoginHome({Key? key}) : super(key: key);

  @override
  State<LoginHome> createState() => _LoginHomeState();
}

class _LoginHomeState extends State<LoginHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.primary,
      body: Form(
        child: Container(
          padding: EdgeInsets.all(10),
        ),
      ),
    );
  }
}
