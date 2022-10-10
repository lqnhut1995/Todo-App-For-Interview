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
    statusCode: json['statusCode'] as int,
    responseData: BaseResponse._dataFromJson(json['responseData'] as Object),
    isSuccessStatusCode: json['isSuccessStatusCode'] as bool,
    message: json['message'] as String?,
    responseHeader: json['responseHeader'],
    fullResponseString: json['fullResponseString'] as String?,
    fullMsg: json['fullMsg'] as String?,
    aqStatusCode: json['aqStatusCode'] as String?,
    resourceKey: json['resourceKey'] as String?,
  );
}
