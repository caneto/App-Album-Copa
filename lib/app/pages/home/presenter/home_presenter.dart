
import 'package:appalbumcopa/app/core/mvp/app_presenter.dart';
import 'package:appalbumcopa/app/pages/home/view/home_view.dart';

abstract class HomePresenter extends AppPresenter<HomeView> {
  Future<void> getUserData();
  Future<void> logout();
}