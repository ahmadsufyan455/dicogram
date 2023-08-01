import 'package:dio/dio.dart';

abstract class RemoteDataSource {
  Future<T> request<T>({
    required String endPoint,
    required T Function(dynamic) modelFromJson,
    Map<String, dynamic>? data,
    Map<String, dynamic>? headers,
    String method = 'GET',
  });
}

class RemoteDataSourceImpl implements RemoteDataSource {
  final Dio _dio =
      Dio(BaseOptions(baseUrl: 'https://story-api.dicoding.dev/v1'));

  @override
  Future<T> request<T>({
    required String endPoint,
    required T Function(dynamic) modelFromJson,
    Map<String, dynamic>? data,
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
