import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {

  IconData icon;
  VoidCallback onPressed;

  const RoundedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: icon
    );
  }
}
