import 'package:appalbumcopa/app/core/rest/custom_dio.dart';
import 'package:appalbumcopa/app/core/ui/global/global_context.dart';
import 'package:appalbumcopa/app/core/ui/global/global_context_impl.dart';
import 'package:appalbumcopa/app/core/ui/theme/theme_config.dart';
import 'package:appalbumcopa/app/pages/auth/login/login_route.dart';
import 'package:appalbumcopa/app/pages/auth/register/register_route.dart';
import 'package:appalbumcopa/app/pages/home/home_route.dart';
import 'package:appalbumcopa/app/pages/my_stickers/my_stickers_page.dart';
import 'package:appalbumcopa/app/pages/my_stickers/my_stickers_route.dart';
import 'package:appalbumcopa/app/pages/splash/splash_route.dart';
import 'package:appalbumcopa/app/pages/sticker_detail/sticker_detail_page.dart';
import 'package:appalbumcopa/app/repository/auth/auth_repository.dart';
import 'package:appalbumcopa/app/repository/auth/auth_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

class AppAlbumCopa extends StatelessWidget {
  AppAlbumCopa({Key? key}) : super(key: key);

  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return FlutterGetItApplicationBinding(
      bindingsBuilder: () => [
        Bind.lazySingleton<CustomDio>((i) => CustomDio()),
        Bind.lazySingleton<AuthRepository>((i) => AuthRepositoryImpl(dio: i())),
        Bind.lazySingleton<GlobalContext>(
          (i) => GlobalContextImpl(
              navigatorKey: navigatorKey, authRepository: i()),
        ) // o que é isso???
      ],
      child: MaterialApp(
        title: 'Fifa World Cup Album',
        debugShowCheckedModeBanner: false,
        navigatorKey: navigatorKey,
        theme: ThemeConfig.theme,
        routes: {
          '/': (_) => const SplashRoute(),
          '/auth/login': (_) => const LoginRoute(),
          '/auth/register': (_) => const RegisterRoute(),
          '/my-stickers': (_) => const MyStickersRoute(),
          '/sticker-detail': (_) => const StickerDetailPage(),
          '/home': (_) => const HomeRoute(),
        }
      ),
    );
  }
}
