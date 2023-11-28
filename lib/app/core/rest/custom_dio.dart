import 'package:appalbumcopa/app/core/config/env/env.dart';
import 'package:appalbumcopa/app/core/rest/interceptors/auth_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';

class CustomDio extends DioForNative {

  final _authInterceptor = AuthInterceptor();

  CustomDio(): super(BaseOptions(
    baseUrl: Env.instance['backend_base_url'] ?? '',
    connectTimeout: const Duration(seconds: 5),
    receiveTimeout: const Duration(seconds: 6),
  )){
    interceptors.add(LogInterceptor(requestBody: true, responseBody: true, requestHeader: true));
  }

  CustomDio auth() {
    interceptors.add(_authInterceptor);
    return this;
  }

  CustomDio unAuth() {
    interceptors.remove(_authInterceptor);
    return this;
  }

}