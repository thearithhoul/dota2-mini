import 'package:dio/dio.dart';
import 'package:dota2_app/api-client/dio/dio_client.dart';
import 'package:dota2_app/core/flavor/flavor_config.dart';

class BaseRepository {
  late DioClient dioClient;
  BaseRepository() {
    var dio = Dio();
    dioClient = DioClient(dio, FlavorConfig.instance.values.baseUrl);
  }
}
