
import 'package:appalbumcopa/app/pages/sticker_detail/presenter/sticker_detail_presenter.dart';
import 'package:appalbumcopa/app/pages/sticker_detail/presenter/sticker_detail_presenter_impl.dart';
import 'package:appalbumcopa/app/pages/sticker_detail/sticker_detail_page.dart';
import 'package:appalbumcopa/app/repository/stickers/stickers_repository.dart';
import 'package:appalbumcopa/app/repository/stickers/stickers_repository_impl.dart';
import 'package:appalbumcopa/app/services/sticker/find_sticker_service.dart';
import 'package:appalbumcopa/app/services/sticker/find_sticker_service_impl.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_getit/flutter_getit.dart';

class StickerDetailRoute extends FlutterGetItPageRoute {
  const StickerDetailRoute({super.key});

  @override
  List<Bind<Object>> get bindings => [
    Bind.lazySingleton<StickersRepository>((i) => StickersRepositoryImpl(dio: i())),
    Bind.lazySingleton<FindStickerService>((i) => FindStickerServiceImpl(stickersRepository: i())),
    Bind.lazySingleton<StickerDetailPresenter>((i) => StickerDetailPresenterImpl(findStickerService: i(), stickersRepository: i())),
  ];

  @override
  WidgetBuilder get page => (context) => StickerDetailPage(presenter: context.get(),);
}