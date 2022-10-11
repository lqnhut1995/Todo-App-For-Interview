// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MToBuy _$$_MToBuyFromJson(Map<String, dynamic> json) => _$_MToBuy(
      id: json['id'] as int?,
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      quantity: json['quantity'] as int?,
      type: json['type'] as int?,
    );

Map<String, dynamic> _$$_MToBuyToJson(_$_MToBuy instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'quantity': instance.quantity,
      'type': instance.type,
    };

_$_MToCall _$$_MToCallFromJson(Map<String, dynamic> json) => _$_MToCall(
      id: json['id'] as int?,
      name: json['name'] as String?,
      number: json['number'] as String?,
    );

Map<String, dynamic> _$$_MToCallToJson(_$_MToCall instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'number': instance.number,
    };
