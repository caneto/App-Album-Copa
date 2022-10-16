import 'package:appalbumcopa/app/models/groups_stickers.dart';
import 'package:appalbumcopa/app/pages/my_stickers/view/my_stickers_view.dart';
import 'package:appalbumcopa/app/repository/stickers/stickers_repository.dart';

import './my_stieckers_presenter.dart';

class MyStieckersPresenterImpl implements MyStieckersPresenter {

  final StickersRepository stickersRepository;
  late final MyStickersView _view;

  var album = <GroupsStickers>[];
  var statusSelected = 'all';
  List<String>? countries;

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
    statusSelected = status;
    _view.updateStatusFilter(status);
  }
  
  @override
  void countryFilter(List<String>? countries) {
    this.countries = countries;
    if(countries == null) {
      _view.updateAlbum(album);
    } else {
      final albumFilter = [...album.where((element) => countries.contains(element.countryCode))];
      _view.updateAlbum(albumFilter); 
    }
  }

}
