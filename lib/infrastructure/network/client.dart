import 'package:dio/dio.dart';

import 'package:interview_project/constant/strings.dart';

class Client {
  // dio instance
  final Dio _dio;

  // injecting dio instance
  Client(this._dio);

  Dio instance() => this._dio;

  // Get:-----------------------------------------------------------------------
  Future<dynamic> get(
    String uri, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
    bool requiresToken = false,
  }) async {
    try {
      final newOptions = _mapOptions(options, requiresToken: requiresToken);

      final response = await _dio.get(
        uri,
        queryParameters: queryParameters,
        options: newOptions,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );

      return response.data;
    } catch (e) {
      _catchException(e);
    }
  }

  // Post:----------------------------------------------------------------------
  Future<dynamic> post(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    bool requiresToken = false,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final newOptions = _mapOptions(options, requiresToken: requiresToken);

      final response = await _dio.post(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: newOptions,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );

      return response.data;
    } catch (e) {
      _catchException(e);
    }
  }

// Delete:----------------------------------------------------------------------
  Future<dynamic> delete(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    bool requiresToken = false,
  }) async {
    try {
      final newOptions = _mapOptions(options, requiresToken: requiresToken);

      final response = await _dio.delete(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: newOptions,
        cancelToken: cancelToken,
      );

      return response.data;
    } catch (e) {
      _catchException(e);
    }
  }

// Put:----------------------------------------------------------------------
  Future<dynamic> put(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    bool requiresToken = false,
  }) async {
    try {
      final newOptions = _mapOptions(options, requiresToken: requiresToken);

      final response = await _dio.put(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: newOptions,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );

      return response.data;
    } catch (e) {
      _catchException(e);
    }
  }

  Options _mapOptions(Options? options, {bool requiresToken = false}) {
    final newOptions = options ?? Options(headers: <String, dynamic>{});

    if (requiresToken) {
      newOptions.headers?.addAll(
        {Strings.option_custom_key: requiresToken},
      );
    }

    return newOptions;
  }

  void _catchException(dynamic e) {
    print('<---Client Exception--->');

    if (e is DioError) {
      print(e.requestOptions.data);
      print(e.requestOptions.uri);
      print(e.response);
      print(e.response!.statusCode);
    }

    print('<---Client Exception--->');
    throw e;
  }
}
