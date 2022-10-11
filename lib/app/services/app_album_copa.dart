import 'package:appalbumcopa/app/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';

class AppAlbumCopa extends StatelessWidget {
  const AppAlbumCopa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fifa World Cup Album',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (_) => const SplashPage(),
      }
    );
  }
}
