
import 'package:appalbumcopa/app/core/ui/helpers/loader.dart';
import 'package:appalbumcopa/app/core/ui/helpers/messages.dart';
import 'package:appalbumcopa/app/pages/auth/register/register_page.dart';
import 'package:flutter/widgets.dart';;

import './register_view.dart';

abstract class RegisterViewImpl extends State<RegisterPage>
    with Messages<RegisterPage>, Loader<RegisterPage>
    implements RegisterView {

  @override
  void initState() {
    widget.presenter.view = this;
    super.initState();
  }

  @override
  void registerError([String? message]) {
    hideLoader();
    showError(message ?? 'Erro ao register usuário');
  }

  @override
  void registerSuccess() {
    hideLoader();
    showSucess('Usuário cadastrado com Sucesso');
    Navigator.of(context).pop();
  }

}