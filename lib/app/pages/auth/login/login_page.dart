import 'package:appalbumcopa/app/core/ui/styles/button_styles.dart';
import 'package:appalbumcopa/app/core/ui/styles/colors_app.dart';
import 'package:appalbumcopa/app/core/ui/styles/text_styles.dart';
import 'package:appalbumcopa/app/core/ui/widgets/button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.primary,
      body: Form(
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background_login.png'),
                fit: BoxFit.cover),
          ),
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate.fixed([
                  SizedBox(
                      height: MediaQuery.of(context).size.height *
                          (MediaQuery.of(context).size.width > 350
                              ? .30
                              : .25)),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Center(
                      child: Text(
                        'Login',
                        style: context.textStyles.titleWhite,
                      ),
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      label: Text('E-Mail'),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      label: Text('Senha'),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: Text(
                      'Esqueci a senha?',
                      style: context.textStyles.textSecundaryFontMedium
                          .copyWith(color: context.colors.yellow, fontSize: 14),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Button(
                    widht: MediaQuery.of(context).size.width * .9,
                    onPressed: () {},
                    style: context.buttonStyles.yellowButton,
                    labelStyle: context
                        .textStyles.textSecundaryFontExtraBoldPrimaryColor,
                    label: 'Entrar',
                  ),
                ]),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: [
                    const Spacer(),
                    Text.rich(
                      style: context.textStyles.textSecundaryFontMedium
                            .copyWith(color: Colors.white),
                      TextSpan(
                        text: 'Não possui uma conta? ',
                        children: [
                           TextSpan(
                             text: 'Cadastre-se',style:
                             context.textStyles.textSecundaryFontMedium
                               .copyWith(color: context.colors.yellow),
                             recognizer: TapGestureRecognizer()
                               ..onTap = () => Navigator.of(context)
                                   .pushNamed('/auth/register'),
                          )
                      ]),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
