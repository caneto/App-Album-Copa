import 'package:appalbumcopa/app/core/mvp/app_presenter.dart';
import 'package:appalbumcopa/app/pages/my_stickers/view/my_stickers_view.dart';

abstract class MyStieckersPresenter extends AppPresenter<MyStickersView> {
  Future<void> getMyAlbum();
  Future<void> statusFilter(String status);
  void countryFilter(List<String>? countries);
}