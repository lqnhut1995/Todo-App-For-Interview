part of 'errors.dart';

@freezed
class ListFailure with _$ListFailure {
  const factory ListFailure.unableToGetToSellList() = _UnableToGetToSell;
  const factory ListFailure.unableToGetToBuyList() = _UnableToGetToBuy;
  const factory ListFailure.unableToGetToCallList() = _UnableToGetToCall;
}
