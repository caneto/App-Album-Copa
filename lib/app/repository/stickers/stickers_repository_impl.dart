// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:appalbumcopa/app/core/exceptions/repository_exception.dart';
import 'package:appalbumcopa/app/core/rest/custom_dio.dart';
import 'package:appalbumcopa/app/models/groups_stickers.dart';
import 'package:dio/dio.dart';

import './stickers_repository.dart';

class StickersRepositoryImpl implements StickersRepository {

  final CustomDio dio;

  const StickersRepositoryImpl({
    required this.dio,
  });
  
  @override
  Future<List<GroupsStickers>> getMyAlbum() async {
    try {
      final result = await dio.get('/api/countries');
      return result.data
        .map<GroupsStickers>((g) => GroupsStickers.fromMap(g))
        .toList();
    } on DioError catch (e,s) {
      log('Erro ao buscar album do usuario', error: e, stackTrace: s);
      throw RepositoryException(message: 'Erro ao buscar album do usuario');
    }
  }

}
