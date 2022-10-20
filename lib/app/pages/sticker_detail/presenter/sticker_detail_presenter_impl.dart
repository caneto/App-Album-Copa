import 'package:appalbumcopa/app/models/sticker_model.dart';
import 'package:appalbumcopa/app/models/user_sticker_model.dart';
import 'package:appalbumcopa/app/pages/sticker_detail/view/sticker_detail_view.dart';
import 'package:appalbumcopa/app/repository/stickers/stickers_repository.dart';
import 'package:appalbumcopa/app/services/sticker/find_sticker_service.dart';

import './sticker_detail_presenter.dart';

class StickerDetailPresenterImpl implements StickerDetailPresenter {
  late final StickerDetailView _view;
  final FindStickerService findStickerService;
  final StickersRepository stickersRepository;
  UserStickerModel? stickerUser;
  StickerModel? sticker;
  int amount = 0;

  StickerDetailPresenterImpl({required this.stickersRepository, required this.findStickerService});

  @override
  set view(StickerDetailView view) => _view = view;

  @override
  Future<void> load({
    required String countryCode,
    required String stickerNumber,
    required String countryName,
    UserStickerModel? stickerUser,
  }) async {
    this.stickerUser = stickerUser;

    if(stickerUser == null) {
      sticker = await findStickerService.execute(countryName, countryCode, stickerNumber);
    }

    bool hasSticker = stickerUser != null;

    if(hasSticker) {
      amount = stickerUser.duplicate + 1;
    }

    _view.screenLoaded(hasSticker, countryCode, stickerNumber, countryName, amount);
  }
  
  @override
  decrementAmout() {
    if(amount > 1) {
      _view.updateAmout(--amount);
    }
  }
  
  @override
  incrementAmout() {
      _view.updateAmout(++amount);
  }
  
  @override
  Future<void> saveSticker() async {
    _view.showLoader();

    try {
      if(stickerUser == null) {
        await stickersRepository.registerUserSticker(sticker!.id, amount);
      } else {
        await stickersRepository.updateUserSticker(stickerUser!.idSticker, amount);
      }
    } catch (e) {
      _view.error('Erro ao atualizar ou cadastrar a figurinha');
    }
    _view.saveSuccess();
  }
}
