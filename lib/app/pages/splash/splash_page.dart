import 'package:appalbumcopa/app/core/theme/theme_config.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeConfig.theme,
      child: Scaffold(
        appBar: AppBar(title: const Text('Splash Screen'),),
        body: Container(),
      ),
    );
  }
}
