import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiManager {
  var dio = Dio(BaseOptions(baseUrl: "https://mp3quran.net/api/v3"));

  ApiManager() {
    dio.interceptors.add(PrettyDioLogger());
  }

  dynamic getRadios() async {
    dynamic response = await dio.get("/radios");
    return response.data;
  }
}
