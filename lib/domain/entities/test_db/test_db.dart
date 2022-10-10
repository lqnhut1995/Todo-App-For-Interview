import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_db.freezed.dart';
part 'test_db.g.dart';

@freezed
class TestDb with _$TestDb {
  static const fieldId = 'id';
  static const fieldName = 'name';
  static const fieldValue = 'value';
  static const fieldNum = 'num';

  const TestDb._();
  const factory TestDb({
    int? id,
    String? name,
    String? value,
    double? num,
  }) = _TestDb;

  factory TestDb.fromJson(Map<String, dynamic> json) => _$TestDbFromJson(json);
}
