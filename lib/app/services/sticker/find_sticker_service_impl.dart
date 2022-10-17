import 'package:appalbumcopa/app/models/register_sticker_model.dart';
import 'package:appalbumcopa/app/models/sticker_model.dart';
import 'package:appalbumcopa/app/repository/stickers/stickers_repository.dart';

import './find_sticker_service.dart';

class FindStickerServiceImpl implements FindStickerService {
  final StickersRepository stickersRepository;

  const FindStickerServiceImpl({
    required this.stickersRepository,
  });

  @override
  Future<StickerModel> execute(String countryName, String stickerNumber) async {
    final sticker =
        await stickersRepository.findStickerByCode(countryName, stickerNumber);
    if (sticker == null) {
      final registerSticker = RegisterStickerModel(
        stickerName: stickerName,
        stickerCode: stickerCode,
        stickerNumber: stickerNumber,
      );
    }
  }
}
