import 'package:appalbumcopa/app/core/config/env/env.dart';
import 'package:appalbumcopa/app/core/rest/interceptors/auth_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';

class CustomDio extends DioForNative {

  final _authInterceptor = AuthInterceptor();

  CustomDio(): super(BaseOptions(
    baseUrl: Env.instance['backend_base_url'] ?? '',
    connectTimeout: 5000,
    receiveTimeout: 60000,
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