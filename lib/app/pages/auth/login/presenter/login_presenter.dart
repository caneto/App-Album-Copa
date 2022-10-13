import 'package:appalbumcopa/app/core/mvp/app_presenter.dart';
import 'package:appalbumcopa/app/pages/auth/login/view/login_view.dart';

abstract class LoginPresenter extends AppPresenter<LoginView> {
  Future<void> login(String email, String password);
}