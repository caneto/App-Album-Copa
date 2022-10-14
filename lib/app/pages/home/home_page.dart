import 'package:appalbumcopa/app/core/ui/styles/colors_app.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.primary,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: context.colors.primary,
        title: const Text('Home'),
      ),
      body: Container(),
    );
  }
}
