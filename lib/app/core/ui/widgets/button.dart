import 'package:appalbumcopa/app/core/ui/styles/button_styles.dart';
import 'package:appalbumcopa/app/core/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final ButtonStyle style;
  final TextStyle labelStyle;
  final String label;
  final double? widht;
  final double? height;
  final VoidCallback? onPressed;
  final bool outline;

  const Button({
    Key? key,
    required this.style,
    required this.labelStyle,
    required this.label,
    this.widht,
    this.height,
    this.onPressed,
    this.outline = false
  }) : super(key: key);

  Button.primary({
    Key? key,
    required this.label,
    this.widht,
    this.height,
    this.onPressed,
  })
      : style = ButtonStyles.instance.primaryButton,
        labelStyle = TextStyles.instance.textPrimaryFontExtraBold,
        outline = false;

  @override
  Widget build(BuildContext context) {
    final labelText = Text(
      label,
      style: labelStyle,
      overflow: TextOverflow.ellipsis,
    );

    return SizedBox(
      width: widht,
      height: height,
      child: outline
          ? OutlinedButton(
              onPressed: onPressed,
              style: style,
              child: labelText,
            )
          : ElevatedButton(
              onPressed: onPressed,
              style: style,
              child: labelText,
            ),
    );
  }
}
