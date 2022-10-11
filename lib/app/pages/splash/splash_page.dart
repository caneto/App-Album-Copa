import 'package:appalbumcopa/app/core/styles/button_styles.dart';
import 'package:appalbumcopa/app/core/styles/colors_app.dart';
import 'package:appalbumcopa/app/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: const Text('Splash Screen'),
     ),
     body: Center(
       child: Column(
         children: [
           ElevatedButton(
             onPressed: () {},
             style: ButtonStyles.instance.primaryButton,
             child: Text('Salvar'),
           ),
           OutlinedButton(
             onPressed: () {},
             style: ButtonStyles.instance.primaryOutlineButton,
             child: Text('Salvar'),
           ),
         ],
       ),
     ),
   );
  }
}
