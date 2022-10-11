// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ToSell _$$_ToSellFromJson(Map<String, dynamic> json) => _$_ToSell(
      id: json['id'] as int?,
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      quantity: json['quantity'] as int?,
      type: json['type'] as int?,
    );

Map<String, dynamic> _$$_ToSellToJson(_$_ToSell instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'quantity': instance.quantity,
      'type': instance.type,
    };

_$_ToBuy _$$_ToBuyFromJson(Map<String, dynamic> json) => _$_ToBuy(
      id: json['id'] as int?,
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      quantity: json['quantity'] as int?,
      type: json['type'] as int?,
    );

Map<String, dynamic> _$$_ToBuyToJson(_$_ToBuy instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'quantity': instance.quantity,
      'type': instance.type,
    };

_$_ToCall _$$_ToCallFromJson(Map<String, dynamic> json) => _$_ToCall(
      id: json['id'] as int?,
      name: json['name'] as String?,
      number: json['number'] as String?,
    );

Map<String, dynamic> _$$_ToCallToJson(_$_ToCall instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'number': instance.number,
    };
