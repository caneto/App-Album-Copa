import 'package:appalbumcopa/app/core/rest/custom_dio.dart';
import 'package:appalbumcopa/app/pages/auth/login/login_page.dart';
import 'package:appalbumcopa/app/pages/home/home_page.dart';
import 'package:appalbumcopa/app/pages/splash/splash_page.dart';
import 'package:appalbumcopa/app/pages/splash/splash_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

class AppAlbumCopa extends StatelessWidget {
  const AppAlbumCopa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlutterGetItApplicationBinding(
      bindingsBuilder: () => [
        Bind.lazySingleton<CustomDio>((i) => CustomDio())
      ],
      child: MaterialApp(
        title: 'Fifa World Cup Album',
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (_) => const SplashRoute(),
          '/auth/login': (_) => const LoginHome(),
          '/home': (_) => const HomePage(),
        }
      ),
    );
  }
}
