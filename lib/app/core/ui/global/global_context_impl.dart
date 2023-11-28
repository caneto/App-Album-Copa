// ignore_for_file: public_member_api_docs, sort_constructors_first, use_build_context_synchronously
import 'package:appalbumcopa/app/core/ui/styles/colors_app.dart';
import 'package:flutter/cupertino.dart';

import 'package:appalbumcopa/app/repository/auth/auth_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import './global_context.dart';

class GlobalContextImpl implements GlobalContext {

  final GlobalKey<NavigatorState> navigatorKey;
  final AuthRepository authRepository;

  const GlobalContextImpl({
    required this.navigatorKey,
    required this.authRepository,
  });

  @override
  Future<void> loginExpire() async {
    final sp = await SharedPreferences.getInstance();
    sp.clear();
    showTopSnackBar(
      Overlay.of(navigatorKey.currentState!.context),
      CustomSnackBar.error(
        message: 'Login Expirado',
        backgroundColor: ColorsApp.instance.primary,
      ),      
    );
    navigatorKey.currentState!.pushNamedAndRemoveUntil('/auth/login', (route) => false);
  }

}
