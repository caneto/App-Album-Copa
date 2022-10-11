import 'package:appalbumcopa/app/core/styles/colors_app.dart';
import 'package:flutter/material.dart';

class ButtonStyles {
  static ButtonStyles? _instance;

  ButtonStyles._();

  static ButtonStyles get instance {
    _instance??= ButtonStyles._();
    return _instance;
  }

  ButtonStyles get yellowButton => ElevatedButton.styleFrom(
    backgroundColor: ColorsApp.instance.yellow,
    
  );

}