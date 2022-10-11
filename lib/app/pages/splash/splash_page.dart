import 'package:appalbumcopa/app/core/ui/helpers/loader.dart';
import 'package:appalbumcopa/app/core/ui/styles/button_styles.dart';
import 'package:appalbumcopa/app/core/ui/styles/text_styles.dart';
import 'package:appalbumcopa/app/core/ui/widgets/button.dart';
import 'package:appalbumcopa/app/core/ui/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with Loader {
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
             onPressed: () async {
               showLoader();

               await Future.delayed(Duration(seconds: 2));
               hideLoader();
             },
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
