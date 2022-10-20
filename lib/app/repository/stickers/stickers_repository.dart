import 'package:appalbumcopa/app/models/groups_stickers.dart';
import 'package:appalbumcopa/app/models/register_sticker_model.dart';
import 'package:appalbumcopa/app/models/sticker_model.dart';

abstract class StickersRepository {
  Future<List<GroupsStickers>> getMyAlbum();
  Future<StickerModel?> findStickerByCode(String stickerCode, String stickerNumber);
  Future<StickerModel> create(RegisterStickerModel registerStickerModel);
  Future<void> registerUserSticker(int stickerId, int amount);
  Future<void> updateUserSticker(int stickerId, int amount);
}