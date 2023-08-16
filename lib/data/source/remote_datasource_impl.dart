import 'package:dicogram/data/source/remote_datasource.dart';
import 'package:dio/dio.dart';

class RemoteDataSourceImpl implements RemoteDataSource {
  final Dio dio;
  RemoteDataSourceImpl({required this.dio});

  @override
  Future<T> request<T>({
    required String endPoint,
    required T Function(dynamic) modelFromJson,
    dynamic data,
    Map<String, dynamic>? queryParameter,
    Map<String, dynamic>? headers,
    String method = 'GET',
  }) async {
    try {
      final response = await dio.request(
        endPoint,
        data: data,
        queryParameters: queryParameter,
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
