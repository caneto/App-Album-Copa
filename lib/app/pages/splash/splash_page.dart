import 'package:appalbumcopa/app/core/styles/button_styles.dart';
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
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: (){},
                style: ButtonStyles.instance.yellowButton,
                child: Text('Salvar'),
              ),
              OutlinedButton(
                onPressed: (){},
                style: ButtonStyles.instance.yellowOutlineButton,
                child: Text('Salvar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
