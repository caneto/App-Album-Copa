// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:appalbumcopa/app/core/exceptions/repository_exception.dart';
import 'package:appalbumcopa/app/core/rest/custom_dio.dart';
import 'package:appalbumcopa/app/models/user_model.dart';
import 'package:dio/dio.dart';

import './user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  
  final CustomDio dio;

  const UserRepositoryImpl({
    required this.dio,
  });

  @override
  Future<UserModel> getMe() async {
    try {
      final result = await dio.auth().get('/api/me');
      return UserModel.fromMap(result.data);
    } on DioException catch (e,s) {
      log('Erro ao buscar dados do usuário logado', error: e, stackTrace: s);
      throw RepositoryException(message: 'Erro ao buscar dados do usuário logado');
    }
  }

}
