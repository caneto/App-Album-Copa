import 'package:flutter/widgets.dart';

import 'package:appalbumcopa/app/core/ui/helpers/loader.dart';
import 'package:appalbumcopa/app/core/ui/helpers/messages.dart';

import '../sticker_detail_page.dart';
import './sticker_detail_view.dart';

abstract class StickerDetailViewImpl extends State<StickerDetailPage> with Messages<StickerDetailPage>,Loader<StickerDetailPage> implements StickerDetailView {

  bool hasSticker = false;
  String countryCode = '';
  String stickerNumber = '';
  String countryName = '';
  int amount = 0;

  @override
  void initState() {
    widget.presenter.view = this;
    super.initState();
  }

  @override
  void screenLoaded(bool hasSticker, String countryCode, String stickerNumber, String countryName, int amount) {
    // TODO: implement screenLoaded
  } 
}