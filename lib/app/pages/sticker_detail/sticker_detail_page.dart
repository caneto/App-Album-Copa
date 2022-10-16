import 'package:appalbumcopa/app/core/ui/styles/button_styles.dart';
import 'package:appalbumcopa/app/core/ui/styles/text_styles.dart';
import 'package:appalbumcopa/app/core/ui/widgets/button.dart';
import 'package:appalbumcopa/app/core/ui/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class StickerDetailPage extends StatefulWidget {
  const StickerDetailPage({super.key});

  @override
  State<StickerDetailPage> createState() => _StickerDetailPageState();
}

class _StickerDetailPageState extends State<StickerDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhe Figurinha'),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/sticker_pb.png'),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'BRA 17',
                      style: context.textStyles.textPrimaryFontBold
                          .copyWith(fontSize: 22),
                    ),
                  ),
                  const Spacer(),
                  RoundedButton(icon: Icons.remove, onPressed: () {}),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(
                      '1',
                      style: context.textStyles.textSecundaryFontMedium,
                    ),
                  ),
                  RoundedButton(icon: Icons.add, onPressed: () {}),
                ],
              ),
              Container(
                padding: const EdgeInsets.only(left: 15, bottom: 10),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Brasil',
                  style: context.textStyles.textPrimaryFontRegular,
                ),
              ),
              Button.primary(
                label: 'Adicionar Figurinha',
                onPressed: () {},
                widht: MediaQuery.of(context).size.width * .9,
              ),
              Button(
                onPressed: () {},
                label: 'Excluir Figurinha',
                outline: true,
                style: context.buttonStyles.primaryOutlineButton,
                labelStyle: context.textStyles.textSecundaryFontExtraBoldPrimaryColor,
                widht: MediaQuery.of(context).size.width * .9,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
