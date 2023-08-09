import 'package:dicogram/utils/constants.dart';
import 'package:dio/dio.dart';

abstract class RemoteDataSource {
  Future<T> request<T>({
    required String endPoint,
    required T Function(dynamic) modelFromJson,
    dynamic data,
    Map<String, dynamic>? headers,
    String method = 'GET',
  });
}

class RemoteDataSourceImpl implements RemoteDataSource {
  final Dio _dio = Dio(BaseOptions(baseUrl: baseURL));

  @override
  Future<T> request<T>({
    required String endPoint,
    required T Function(dynamic) modelFromJson,
    dynamic data,
    Map<String, dynamic>? headers,
    String method = 'GET',
  }) async {
    try {
      final response = await _dio.request(
        endPoint,
        data: data,
        options: Options(method: method, headers: headers),
      );
      return modelFromJson(response.data);
    } on DioException catch (e) {
      throw Exception(e.response?.data['message'] ?? e.message);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
