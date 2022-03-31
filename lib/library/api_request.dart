import 'package:dio/dio.dart';

class ApiRequest {
  final String url;
  final Map<String, dynamic>? data;

  ApiRequest({
    required this.url,
    required this.data,
  });

  Dio _dio() {
    // put token authorization
    return Dio(
      BaseOptions(
        headers: {
          'Authorization': 'B ....',
        },
      ),
    );
  }

  void get({
    Function()? beforeSend,
    Function(dynamic data)? onSucsses,
    Function(dynamic error)? onError,
  }) {
    _dio()
        .get(url, queryParameters: data)
        .then((res) => {if (onSucsses != null) onSucsses(res.data)})
        .catchError((error) {
      if (onError != null) onError(error);
    });
  }
}
