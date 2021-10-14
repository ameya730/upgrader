import 'package:dio/dio.dart';

class LoginAPIService {
  final dio = new Dio();
  final cancelToken = new CancelToken();
}
