import 'package:appalbumcopa/app/models/sticker_model.dart';

abstract class FindStickerService {
  Future<StickerModel> execute(String countryName, String countryCode, String stickerNumber);

}