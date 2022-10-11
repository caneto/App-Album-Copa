import 'package:appalbumcopa/app/core/ui/styles/button_styles.dart';
import 'package:appalbumcopa/app/core/ui/styles/text_styles.dart';
import 'package:appalbumcopa/app/core/ui/widgets/button.dart';
import 'package:appalbumcopa/app/core/ui/widgets/rounded_button.dart';
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
           Button(
             onPressed: () {},
             style: ButtonStyles.instance.yellowButton,
             labelStyle: TextStyles.instance.textPrimaryFontBold,
             label: 'Salvar',
           ),
           Button.primary(
             onPressed: () {},
             label: 'Salvar',
           ),
           Button.primary(
             widht: MediaQuery.of(context).size.width * .9,
             height: 30,
             onPressed: () {},
             label: 'Salvar',
           ),
           RoundedButton(icon: Icons.add, onPressed: () {})
         ],
       ),
     ),
   );
  }
}
