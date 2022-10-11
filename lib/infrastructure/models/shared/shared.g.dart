// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shared.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse<T> _$BaseResponseFromJson<T>(Map<String, dynamic> json) {
  $checkKeys(
    json,
    disallowNullValues: const ['responseData'],
  );
  return BaseResponse<T>(
    statusCode: json['statusCode'] as int?,
    responseData: BaseResponse._dataFromJson(json['responseData'] as Object),
    message: json['message'] as String?,
    responseHeader: json['responseHeader'],
  );
}
