part of 'shared.dart';

class DeserializeAction<T> {
  final Map<String, dynamic> json;
  DeserializeAction(this.json);

  BaseResponse<T> invoke() {
    return BaseResponse<T>.fromJson(json);
  }

  static BaseResponse _invoke(DeserializeAction a) => a.invoke();
}

// Optimize parsing time
Future<dynamic> deserialize<T>(Map<String, dynamic> json) =>
    compute(DeserializeAction._invoke, DeserializeAction<T>(json));

@JsonSerializable(createToJson: false)
class BaseResponse<T> {
  BaseResponse({
    required this.statusCode,
    required this.responseData,
    required this.isSuccessStatusCode,
    this.message,
    this.responseHeader,
    this.fullResponseString,
    this.fullMsg,
    this.aqStatusCode,
    this.resourceKey,
  });

  final int statusCode;
  final String? message;
  @JsonKey(fromJson: _dataFromJson, disallowNullValue: true)
  final T responseData;
  final dynamic responseHeader;
  final String? fullResponseString;
  final String? fullMsg;
  final bool isSuccessStatusCode;
  final String? aqStatusCode;
  final String? resourceKey;

  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);

  bool get valid => isSuccessStatusCode && responseData != null;

  /// Decodes [json] by "inspecting" its contents.
  static T _dataFromJson<T>(Object json) {
    if (json is Map<String, dynamic>) {
    } else if (json is List) {
      // Todo
      // return json as T;
    } else {
      return json as T;
    }

    throw ArgumentError.value(
      json,
      'json',
      'Cannot convert the provided data.',
    );
  }
}
