import 'package:appalbumcopa/app/core/ui/styles/colors_app.dart';
import 'package:appalbumcopa/app/core/ui/styles/text_styles.dart';
import 'package:appalbumcopa/app/models/groups_stickers.dart';
import 'package:appalbumcopa/app/models/user_sticker_model.dart';
import 'package:flutter/material.dart';

class StickerGroup extends StatelessWidget {
  final GroupsStickers group;

  const StickerGroup({Key? key, required this.group}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 64,
            child: OverflowBox(
              maxHeight: double.infinity,
              maxWidth: double.infinity,
              child: ClipRect(
                child: Align(
                  alignment: const Alignment(0, 0.1),
                  widthFactor: 1,
                  heightFactor: 0.1,
                  child: Image.network(
                    group.flag,
                    cacheWidth: (MediaQuery.of(context).size.width * 3).toInt(),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              group.countryName,
              style: context.textStyles.titleBlack.copyWith(
                fontSize: 26,
              ),
            ),
          ),
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 20,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, crossAxisSpacing: 10, mainAxisSpacing: 10),
            itemBuilder: (context, index) {
              final stickerNumber = '${group.stickersStart + index}';
              final stickerList = group.stickers
                  .where((sticker) => sticker.sttckerNumber == stickerNumber);
              final sticker = stickerList.isNotEmpty ? stickerList.first : null;
              
              return Sticker(
                stickerNumber: stickerNumber,
                sticker: sticker,
                countryName: group.countryName,
                countryCode: group.countryCode
              );
            },
          ),
        ],
      ),
    );
  }
}

class Sticker extends StatelessWidget {
  final String stickerNumber;
  final UserStickerModel? sticker;
  final String countryName;
  final String countryCode;

  const Sticker({
    Key? key,
    required this.stickerNumber, 
    required this.sticker,
    required this.countryName,
    required this.countryCode
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        color: sticker != null
            ? context.colors.primary
            : context.colors.grey,
        child: Column(
          children: [
            Visibility(
              visible: (sticker?.duplicate ?? 0) > 0,
              maintainSize: true,
              maintainState: true,
              maintainAnimation: true,
              child: Container(
                alignment: Alignment.topRight,
                padding: const EdgeInsets.all(2),
                child: Text(
                  sticker?.duplicate.toString() ?? '',
                  style: context.textStyles.textSecundaryFontMedium.copyWith(
                    color: context.colors.yellow,
                  ),
                ),
              ),
            ),
            Text(
              countryCode,
              style: context.textStyles.textSecundaryFontExtraBold.copyWith(
                color: sticker != null ? Colors.white : Colors.black,
              ),
            ),
            Text(
              stickerNumber,
              style: context.textStyles.textSecundaryFontExtraBold.copyWith(
                color: sticker != null ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}