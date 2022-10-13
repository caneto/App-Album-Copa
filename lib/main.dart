import 'package:appalbumcopa/app/core/config/env/env.dart';
import 'package:flutter/material.dart';
import 'package:appalbumcopa/app/services/app_album_copa.dart';

Future<void> main() async {
  await Env.instance.load();
  runApp(const AppAlbumCopa());
}

