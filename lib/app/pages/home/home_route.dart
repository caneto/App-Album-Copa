
import 'package:appalbumcopa/app/pages/home/home_page.dart';
import 'package:appalbumcopa/app/pages/home/presenter/home_presenter.dart';
import 'package:appalbumcopa/app/pages/home/presenter/home_presenter_impl.dart';
import 'package:appalbumcopa/app/repository/user/user_repository.dart';
import 'package:appalbumcopa/app/repository/user/user_repository_impl.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_getit/flutter_getit.dart';

class HomeRoute extends FlutterGetItPageRoute {
  const HomeRoute({super.key});

  @override
  List<Bind<Object>> get bindings => [
    Bind.lazySingleton<UserRepository>((i) => UserRepositoryImpl(dio: i())),
    Bind.lazySingleton<HomePresenter>((i) => HomePresenterImpl(userRepository: i()))
  ];

  @override
  WidgetBuilder get page => (context) => HomePage(presenter: context.get());
  
}