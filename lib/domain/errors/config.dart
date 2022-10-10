part of 'errors.dart';

@freezed
class ConfigFailure with _$ConfigFailure {
  const factory ConfigFailure.unableToGetTable() = _UnableToGetTable;
}
