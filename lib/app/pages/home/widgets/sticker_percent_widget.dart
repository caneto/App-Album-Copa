import 'dart:math';

import 'package:appalbumcopa/app/core/ui/styles/colors_app.dart';
import 'package:appalbumcopa/app/core/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';

class StickerPercentWidget extends StatelessWidget {

  final int percent;

  const StickerPercentWidget({ super.key, required this.percent });

   @override
   Widget build(BuildContext context) {
       return Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: context.colors.grey,
              shape: BoxShape.circle
            ),
            child: Center(
              child: Text(
                '$percent%',
                style: context.textStyles.titlePrimaryColor,
              ),
            ),
          ),
          SizedBox(
            width: 110,
            height: 110,
            child: Transform.rotate(
                angle: -pi / 2.5,
              child: CircularProgressIndicator(
                  value: percent / 100,
                  color: Colors.white,
                  strokeWidth: 5,
                  backgroundColor: Colors.white.withOpacity(0.5),
              ),
            ),
          )  
        ],
       );
  }
}