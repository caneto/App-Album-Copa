
import 'dart:developer';

import 'package:appalbumcopa/app/core/exceptions/repository_exception.dart';
import 'package:appalbumcopa/app/core/rest/custom_dio.dart';
import 'package:appalbumcopa/app/models/register_user_model.dart';
import 'package:dio/dio.dart';

import './auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {

  final CustomDio dio;

  AuthRepositoryImpl({required this.dio});

  @override
  Future<String> login({required String email, required String password}) {
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    throw UnimplementedError();
  }

  @override
  Future<void> register(RegisterUserModel registerModel) async {
    try {
      await dio.unAuth().post('/api/register',data: registerModel.toMap());
    } on DioError catch (e, s) {
      log('Erro ao registrar usuário', error: e, stackTrace: s);
      throw RepositoryException(message: 'Erro ao registrar usuário');
    }
  }
}