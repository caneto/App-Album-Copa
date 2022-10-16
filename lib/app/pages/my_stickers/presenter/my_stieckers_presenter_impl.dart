import 'package:appalbumcopa/app/models/groups_stickers.dart';
import 'package:appalbumcopa/app/pages/my_stickers/view/my_stickers_view.dart';
import 'package:appalbumcopa/app/repository/stickers/stickers_repository.dart';

import './my_stieckers_presenter.dart';

class MyStieckersPresenterImpl implements MyStieckersPresenter {

  final StickersRepository stickersRepository;
  late final MyStickersView _view;

  var album = <GroupsStickers>[];

  MyStieckersPresenterImpl({
    required this.stickersRepository,
  });
  
  @override
  Future<void> getMyAlbum() async {
    album = await stickersRepository.getMyAlbum();
    _view.loadedPage([...album]);
  }

  @override
  set view(MyStickersView view) => _view = view;
  
  @override
  Future<void> statusFilter(String status) async {
    _view.updateStatusFilter(status);
  }

}
