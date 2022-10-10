import 'dart:async';
// ignore: unused_import
import 'dart:convert';
// ignore: unused_import
import 'dart:developer';

import 'package:dio/dio.dart';

import 'package:interview_project/constant/constant.dart';
import 'package:interview_project/domain/entities/account/entities.dart';
import 'package:interview_project/infrastructure/data_source/account/account.dart';

class DioLoggingInterceptors extends Interceptor {
  final _controller = StreamController<AuthStatus>();

  final String _customHeaderKey = Strings.option_custom_key;

  final AccountLocalDataSource authLocalDataSource;

  final AccountRemoteDataSource authRemoteDataSource;

  Stream<AuthStatus> get status => _controller.stream;

  DioLoggingInterceptors({
    required this.authLocalDataSource,
    required this.authRemoteDataSource,
  }) {
    _controller.add(AuthStatus.unknown());
  }

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (options.headers.containsKey('$_customHeaderKey')) {
      options.headers.remove('$_customHeaderKey');
      final accessToken = null;
      if (accessToken == null) return super.onRequest(options, handler);
      options.headers.addAll({'Authorization': 'Bearer $accessToken'});
    }
    return super.onRequest(options, handler);
  }

  void dispose() => _controller.close();
}
