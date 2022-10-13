import 'dart:developer';

import 'package:appalbumcopa/app/models/register_user_model.dart';
import 'package:appalbumcopa/app/pages/auth/register/view/register_view.dart';
import 'package:appalbumcopa/app/repository/auth/auth_repository.dart';
import './register_presenter.dart';

class RegisterPresenterImpl implements RegisterPresenter {
  final AuthRepository authRepository;
  late final RegisterView _view;

  RegisterPresenterImpl({required this.authRepository});

  @override
  Future<void> register(
      {required String name,
      required String email,
      required String password,
      required String confirmPassword}) async {
    final registerUserModel = RegisterUserModel(
      name: name,
      email: email,
      password: password,
      confirmPassword: confirmPassword,
    );

    try {
      await authRepository.register(registerUserModel);
      _view.registerSuccess();
    } catch (e,s) {
      log('Erro ao Cadastrar usuário', error: e, stackTrace: s);
      _view.registerError();
    }
  }

  @override
  set view(RegisterView view) => _view = view;
}
