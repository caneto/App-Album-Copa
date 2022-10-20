import 'package:appalbumcopa/app/core/mvp/app_presenter.dart';
import 'package:appalbumcopa/app/models/user_sticker_model.dart';
import 'package:appalbumcopa/app/pages/sticker_detail/view/sticker_detail_view.dart';

abstract class StickerDetailPresenter extends AppPresenter<StickerDetailView> {
  Future<void> load({
    required String countryCode, 
    required String stickerNumber,
    required String countryName,
    UserStickerModel? stickerUser,
  });

  incrementAmout();
  decrementAmout();

  Future<void> saveSticker();

}