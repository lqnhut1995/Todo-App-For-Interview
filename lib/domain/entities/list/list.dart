import 'package:freezed_annotation/freezed_annotation.dart';

part 'list.freezed.dart';
part 'list.g.dart';

@freezed
class ToSell with _$ToSell {
  static const fieldId = 'id';
  static const fieldName = 'name';
  static const fieldPrice = 'price';
  static const fieldQuantity = 'quantity';
  static const fieldType = 'type';

  const ToSell._();
  const factory ToSell({
    int? id,
    String? name,
    double? price,
    int? quantity,
    int? type,
  }) = _ToSell;

  factory ToSell.fromJson(Map<String, dynamic> json) => _$ToSellFromJson(json);
}

@freezed
class ToBuy with _$ToBuy {
  const ToBuy._();
  const factory ToBuy({
    int? id,
    String? name,
    double? price,
    int? quantity,
    int? type,
  }) = _ToBuy;

  factory ToBuy.fromJson(Map<String, dynamic> json) => _$ToBuyFromJson(json);
}

@freezed
class ToCall with _$ToCall {
  const ToCall._();
  const factory ToCall({
    int? id,
    String? name,
    String? number,
  }) = _ToCall;

  factory ToCall.fromJson(Map<String, dynamic> json) => _$ToCallFromJson(json);
}
