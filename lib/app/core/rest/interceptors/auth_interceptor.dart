
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthInterceptor extends Interceptor {
  
  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final sp = await SharedPreferences.getInstance();
    final accessToken = sp.getString('accessToken');

    options.headers['Authorization'] = 'Bearer $accessToken';
    handler.next(options);  //! Atenção !///
  }


}