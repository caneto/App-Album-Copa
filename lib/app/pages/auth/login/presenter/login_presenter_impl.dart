// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:appalbumcopa/app/core/exceptions/unauthorized_exeption.dart';
import 'package:appalbumcopa/app/pages/auth/login/view/login_view.dart';
import 'package:appalbumcopa/app/services/login/login_service.dart';

import './login_presenter.dart';

class LoginPresenterImpl implements LoginPresenter {

  final LoginService loginService;
  late final LoginView _view;

  LoginPresenterImpl({
    required this.loginService,
  });

  @override
  Future<void> login(String email, String password) async {
    try {
      await loginService.execute(email: email, password: password);
      _view.success();
    } on UnathorizedExeption {
      _view.error('Usuário ou senha invalidos');
    } catch(e, s) {
      log('Error ao realizar login', error: e, stackTrace: s);
      _view.error('Erro ao realizar login');
    }
  }

  @override
  set view(LoginView view) => _view = view;

}
