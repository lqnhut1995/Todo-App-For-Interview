part of 'models.dart';

@freezed
class MToBuy with _$MToBuy {
  const MToBuy._();
  const factory MToBuy({
    int? id,
    String? name,
    double? price,
    int? quantity,
    int? type,
  }) = _MToBuy;

  factory MToBuy.fromJson(Map<String, dynamic> json) => _$MToBuyFromJson(json);

  ToBuy toDomain() {
    return ToBuy(
      id: id,
      name: name,
      price: price,
      quantity: quantity,
      type: type,
    );
  }
}

@freezed
class MToCall with _$MToCall {
  const MToCall._();
  const factory MToCall({
    int? id,
    String? name,
    String? number,
  }) = _MToCall;

  factory MToCall.fromJson(Map<String, dynamic> json) =>
      _$MToCallFromJson(json);

  ToCall toDomain() {
    return ToCall(
      id: id,
      name: name,
      number: number,
    );
  }
}
