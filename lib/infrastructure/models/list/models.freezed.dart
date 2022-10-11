// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MToBuy _$MToBuyFromJson(Map<String, dynamic> json) {
  return _MToBuy.fromJson(json);
}

/// @nodoc
mixin _$MToBuy {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  int? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MToBuyCopyWith<MToBuy> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MToBuyCopyWith<$Res> {
  factory $MToBuyCopyWith(MToBuy value, $Res Function(MToBuy) then) =
      _$MToBuyCopyWithImpl<$Res>;
  $Res call({int? id, String? name, double? price, int? quantity, int? type});
}

/// @nodoc
class _$MToBuyCopyWithImpl<$Res> implements $MToBuyCopyWith<$Res> {
  _$MToBuyCopyWithImpl(this._value, this._then);

  final MToBuy _value;
  // ignore: unused_field
  final $Res Function(MToBuy) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_MToBuyCopyWith<$Res> implements $MToBuyCopyWith<$Res> {
  factory _$$_MToBuyCopyWith(_$_MToBuy value, $Res Function(_$_MToBuy) then) =
      __$$_MToBuyCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? name, double? price, int? quantity, int? type});
}

/// @nodoc
class __$$_MToBuyCopyWithImpl<$Res> extends _$MToBuyCopyWithImpl<$Res>
    implements _$$_MToBuyCopyWith<$Res> {
  __$$_MToBuyCopyWithImpl(_$_MToBuy _value, $Res Function(_$_MToBuy) _then)
      : super(_value, (v) => _then(v as _$_MToBuy));

  @override
  _$_MToBuy get _value => super._value as _$_MToBuy;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_MToBuy(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MToBuy extends _MToBuy {
  const _$_MToBuy({this.id, this.name, this.price, this.quantity, this.type})
      : super._();

  factory _$_MToBuy.fromJson(Map<String, dynamic> json) =>
      _$$_MToBuyFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final double? price;
  @override
  final int? quantity;
  @override
  final int? type;

  @override
  String toString() {
    return 'MToBuy(id: $id, name: $name, price: $price, quantity: $quantity, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MToBuy &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$$_MToBuyCopyWith<_$_MToBuy> get copyWith =>
      __$$_MToBuyCopyWithImpl<_$_MToBuy>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MToBuyToJson(
      this,
    );
  }
}

abstract class _MToBuy extends MToBuy {
  const factory _MToBuy(
      {final int? id,
      final String? name,
      final double? price,
      final int? quantity,
      final int? type}) = _$_MToBuy;
  const _MToBuy._() : super._();

  factory _MToBuy.fromJson(Map<String, dynamic> json) = _$_MToBuy.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  double? get price;
  @override
  int? get quantity;
  @override
  int? get type;
  @override
  @JsonKey(ignore: true)
  _$$_MToBuyCopyWith<_$_MToBuy> get copyWith =>
      throw _privateConstructorUsedError;
}

MToCall _$MToCallFromJson(Map<String, dynamic> json) {
  return _MToCall.fromJson(json);
}

/// @nodoc
mixin _$MToCall {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get number => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MToCallCopyWith<MToCall> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MToCallCopyWith<$Res> {
  factory $MToCallCopyWith(MToCall value, $Res Function(MToCall) then) =
      _$MToCallCopyWithImpl<$Res>;
  $Res call({int? id, String? name, String? number});
}

/// @nodoc
class _$MToCallCopyWithImpl<$Res> implements $MToCallCopyWith<$Res> {
  _$MToCallCopyWithImpl(this._value, this._then);

  final MToCall _value;
  // ignore: unused_field
  final $Res Function(MToCall) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? number = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_MToCallCopyWith<$Res> implements $MToCallCopyWith<$Res> {
  factory _$$_MToCallCopyWith(
          _$_MToCall value, $Res Function(_$_MToCall) then) =
      __$$_MToCallCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? name, String? number});
}

/// @nodoc
class __$$_MToCallCopyWithImpl<$Res> extends _$MToCallCopyWithImpl<$Res>
    implements _$$_MToCallCopyWith<$Res> {
  __$$_MToCallCopyWithImpl(_$_MToCall _value, $Res Function(_$_MToCall) _then)
      : super(_value, (v) => _then(v as _$_MToCall));

  @override
  _$_MToCall get _value => super._value as _$_MToCall;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? number = freezed,
  }) {
    return _then(_$_MToCall(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MToCall extends _MToCall {
  const _$_MToCall({this.id, this.name, this.number}) : super._();

  factory _$_MToCall.fromJson(Map<String, dynamic> json) =>
      _$$_MToCallFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? number;

  @override
  String toString() {
    return 'MToCall(id: $id, name: $name, number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MToCall &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.number, number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(number));

  @JsonKey(ignore: true)
  @override
  _$$_MToCallCopyWith<_$_MToCall> get copyWith =>
      __$$_MToCallCopyWithImpl<_$_MToCall>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MToCallToJson(
      this,
    );
  }
}

abstract class _MToCall extends MToCall {
  const factory _MToCall(
      {final int? id, final String? name, final String? number}) = _$_MToCall;
  const _MToCall._() : super._();

  factory _MToCall.fromJson(Map<String, dynamic> json) = _$_MToCall.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get number;
  @override
  @JsonKey(ignore: true)
  _$$_MToCallCopyWith<_$_MToCall> get copyWith =>
      throw _privateConstructorUsedError;
}
