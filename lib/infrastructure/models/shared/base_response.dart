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
    this.statusCode,
    required this.responseData,
    this.message,
    this.responseHeader,
  });

  final int? statusCode;
  final String? message;
  @JsonKey(fromJson: _dataFromJson, disallowNullValue: true)
  final T responseData;
  final dynamic responseHeader;

  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);

  bool get valid => statusCode == 200 && responseData != null;

  /// Decodes [json] by "inspecting" its contents.
  static T _dataFromJson<T>(Object json) {
    if (json is Map<String, dynamic>) {
    } else if (json is List) {
      if (<MToCall>[] is T) {
        return json.map((e) => MToCall.fromJson(e)).toList() as T;
      }
      if (<MToBuy>[] is T) {
        return json.map((e) => MToBuy.fromJson(e)).toList() as T;
      }

      return json as T;
    } else {
      return json as T;
    }

    throw ArgumentError.value(
      json,
      'json',
      'Cannot convert the provided data.',
    );
  }

  static BaseResponse<T> dataFromJson<T>(Object json) {
    return BaseResponse<T>(statusCode: 200, responseData: _dataFromJson(json));
  }
}
