abstract class RemoteDataSource {
  Future<T> request<T>({
    required String endPoint,
    required T Function(dynamic) modelFromJson,
    dynamic data,
    Map<String, dynamic>? queryParameter,
    Map<String, dynamic>? headers,
    String method = 'GET',
  });
}
