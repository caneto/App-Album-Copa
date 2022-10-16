import 'package:appalbumcopa/app/core/ui/styles/button_styles.dart';
import 'package:appalbumcopa/app/core/ui/styles/colors_app.dart';
import 'package:appalbumcopa/app/core/ui/styles/text_styles.dart';
import 'package:appalbumcopa/app/core/ui/widgets/button.dart';
import 'package:appalbumcopa/app/pages/my_stickers/my_stickers_page.dart';
import 'package:appalbumcopa/app/pages/my_stickers/presenter/my_stieckers_presenter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

class StickerStatusFilter extends StatelessWidget {
  final String filterSelected;

  const StickerStatusFilter({super.key, required this.filterSelected});

  @override
  Widget build(BuildContext context) {
    
    final presenter = context.get<MyStieckersPresenter>();

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      width: MediaQuery.of(context).size.width,
      child: Wrap(
        spacing: 5,
        alignment: WrapAlignment.center,
        children: [
          Button(
            widht: MediaQuery.of(context).size.width * .3,
            onPressed: () {
              presenter.statusFilter('all');
            },
            style: filterSelected == 'all' ? context.buttonStyles.yellowButton : context.buttonStyles.primaryButton,
            labelStyle: filterSelected == 'all' ? context.textStyles.textSecundaryFontMedium.copyWith(color: context.colors.primary) : context.textStyles.textSecundaryFontMedium,
            label: 'Todas',
          ),
          Button(
            widht: MediaQuery.of(context).size.width * .3,
            onPressed: () {
              presenter.statusFilter('missing');
            },
            style: filterSelected == 'missing' ? context.buttonStyles.yellowButton : context.buttonStyles.primaryButton,
            labelStyle: filterSelected == 'missing' ? context.textStyles.textSecundaryFontMedium.copyWith(color: context.colors.primary) : context.textStyles.textSecundaryFontMedium,
            label: 'Faltando',
          ),
          Button(
            widht: MediaQuery.of(context).size.width * .3,
            onPressed: () {
              presenter.statusFilter('repeated');
            },
            style: filterSelected == 'repeated' ? context.buttonStyles.yellowButton : context.buttonStyles.primaryButton,
            labelStyle: filterSelected == 'repeated' ? context.textStyles.textSecundaryFontMedium.copyWith(color: context.colors.primary) : context.textStyles.textSecundaryFontMedium,
            label: 'Repetidas',
          ),
        ],
      ),
    );
  }
}
