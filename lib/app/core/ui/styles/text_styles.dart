import 'package:appalbumcopa/app/core/ui/styles/colors_app.dart';
import 'package:flutter/material.dart';

class TextStyles {
  static TextStyles? _instance;
  TextStyles._();

  static TextStyles get instance {
    _instance??= TextStyles._();
    return _instance!;
  }

  String get primaryFont => 'Poppins';
  String get secundartFont => 'MPlus1P';

  //primary font
  TextStyle get textPrimaryFontRegular => TextStyle(
    fontWeight: FontWeight.normal, fontFamily: primaryFont
  );

  TextStyle get textPrimaryFontMedium => TextStyle(
      fontWeight: FontWeight.w500, fontFamily: primaryFont
  );

  TextStyle get textPrimaryFontSemiBold => TextStyle(
      fontWeight: FontWeight.w600, fontFamily: primaryFont
  );

  TextStyle get textPrimaryFontBold => TextStyle(
      fontWeight: FontWeight.bold, fontFamily: primaryFont
  );

  TextStyle get textPrimaryFontExtraBold => TextStyle(
      fontWeight: FontWeight.w800, fontFamily: primaryFont
  );

  //secundary font
  TextStyle get textSecundaryFontRegular => TextStyle(
      fontWeight: FontWeight.normal, fontFamily: secundartFont
  );

  TextStyle get textSecundaryFontMedium => TextStyle(
      fontWeight: FontWeight.w600, fontFamily: secundartFont
  );

  TextStyle get textSecundaryFontBold => TextStyle(
      fontWeight: FontWeight.bold, fontFamily: secundartFont
  );

  TextStyle get textSecundaryFontExtraBold => TextStyle(
      fontWeight: FontWeight.w800, fontFamily: primaryFont
  );

  TextStyle get labelTextField => textSecundaryFontRegular.copyWith(
    color: ColorsApp.instance.greyDark
  );

  TextStyle get textSecundaryFontExtraBoldPrimaryColor => textSecundaryFontExtraBold.copyWith(
    color: ColorsApp.instance.primary
  );

  TextStyle get titleWhite => textPrimaryFontBold.copyWith(
    fontSize: 22,
    color: Colors.white
  );

  TextStyle get titleBlack => textPrimaryFontBold.copyWith(
      fontSize: 22,
      color: Colors.black
  );

  TextStyle get titlePrimaryColor => textPrimaryFontBold.copyWith(
      fontSize: 22,
      color: ColorsApp.instance.primary
  );
}

extension TextStylesExtensions on BuildContext {
  TextStyles get textStyles => TextStyles.instance;
}