
import 'package:flutter/material.dart';

class ThemeConfig {
  ThemeConfig._();

  static final theme = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: Colors.black
      ),
      titleTextStyle: TextStyle(
        color: Colors.black,
      )
    )
  );
}