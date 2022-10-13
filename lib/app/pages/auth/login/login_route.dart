
import 'package:appalbumcopa/app/pages/auth/login/login_page.dart';
import 'package:appalbumcopa/app/pages/auth/login/presenter/login_presenter.dart';
import 'package:appalbumcopa/app/pages/auth/login/presenter/login_presenter_impl.dart';
import 'package:appalbumcopa/app/services/login/login_service.dart';
import 'package:appalbumcopa/app/services/login/login_service_impl.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_getit/flutter_getit.dart';

class LoginRoute extends FlutterGetItPageRoute {
  const LoginRoute({super.key});

  @override
  List<Bind<Object>> get bindings => [
        Bind.lazySingleton<LoginService>(
          (i) => LoginServiceImpl(authRepository: i()),
        ),
        Bind.lazySingleton<LoginPresenter>(
          (i) => LoginPresenterImpl(loginService: i()),
        )
  ];

  @override
  WidgetBuilder get page => (context) => LoginPage(
        presenter: context.get(),
      );
  
} 