// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_db.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TestDb _$$_TestDbFromJson(Map<String, dynamic> json) => _$_TestDb(
      id: json['id'] as int?,
      name: json['name'] as String?,
      value: json['value'] as String?,
      num: (json['num'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_TestDbToJson(_$_TestDb instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'value': instance.value,
      'num': instance.num,
    };
