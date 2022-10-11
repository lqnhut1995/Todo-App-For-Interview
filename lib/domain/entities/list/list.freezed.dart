// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ToSell _$ToSellFromJson(Map<String, dynamic> json) {
  return _ToSell.fromJson(json);
}

/// @nodoc
mixin _$ToSell {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  int? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToSellCopyWith<ToSell> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToSellCopyWith<$Res> {
  factory $ToSellCopyWith(ToSell value, $Res Function(ToSell) then) =
      _$ToSellCopyWithImpl<$Res>;
  $Res call({int? id, String? name, double? price, int? quantity, int? type});
}

/// @nodoc
class _$ToSellCopyWithImpl<$Res> implements $ToSellCopyWith<$Res> {
  _$ToSellCopyWithImpl(this._value, this._then);

  final ToSell _value;
  // ignore: unused_field
  final $Res Function(ToSell) _then;

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
abstract class _$$_ToSellCopyWith<$Res> implements $ToSellCopyWith<$Res> {
  factory _$$_ToSellCopyWith(_$_ToSell value, $Res Function(_$_ToSell) then) =
      __$$_ToSellCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? name, double? price, int? quantity, int? type});
}

/// @nodoc
class __$$_ToSellCopyWithImpl<$Res> extends _$ToSellCopyWithImpl<$Res>
    implements _$$_ToSellCopyWith<$Res> {
  __$$_ToSellCopyWithImpl(_$_ToSell _value, $Res Function(_$_ToSell) _then)
      : super(_value, (v) => _then(v as _$_ToSell));

  @override
  _$_ToSell get _value => super._value as _$_ToSell;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_ToSell(
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
class _$_ToSell extends _ToSell {
  const _$_ToSell({this.id, this.name, this.price, this.quantity, this.type})
      : super._();

  factory _$_ToSell.fromJson(Map<String, dynamic> json) =>
      _$$_ToSellFromJson(json);

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
    return 'ToSell(id: $id, name: $name, price: $price, quantity: $quantity, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ToSell &&
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
  _$$_ToSellCopyWith<_$_ToSell> get copyWith =>
      __$$_ToSellCopyWithImpl<_$_ToSell>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ToSellToJson(
      this,
    );
  }
}

abstract class _ToSell extends ToSell {
  const factory _ToSell(
      {final int? id,
      final String? name,
      final double? price,
      final int? quantity,
      final int? type}) = _$_ToSell;
  const _ToSell._() : super._();

  factory _ToSell.fromJson(Map<String, dynamic> json) = _$_ToSell.fromJson;

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
  _$$_ToSellCopyWith<_$_ToSell> get copyWith =>
      throw _privateConstructorUsedError;
}

ToBuy _$ToBuyFromJson(Map<String, dynamic> json) {
  return _ToBuy.fromJson(json);
}

/// @nodoc
mixin _$ToBuy {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  int? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToBuyCopyWith<ToBuy> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToBuyCopyWith<$Res> {
  factory $ToBuyCopyWith(ToBuy value, $Res Function(ToBuy) then) =
      _$ToBuyCopyWithImpl<$Res>;
  $Res call({int? id, String? name, double? price, int? quantity, int? type});
}

/// @nodoc
class _$ToBuyCopyWithImpl<$Res> implements $ToBuyCopyWith<$Res> {
  _$ToBuyCopyWithImpl(this._value, this._then);

  final ToBuy _value;
  // ignore: unused_field
  final $Res Function(ToBuy) _then;

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
abstract class _$$_ToBuyCopyWith<$Res> implements $ToBuyCopyWith<$Res> {
  factory _$$_ToBuyCopyWith(_$_ToBuy value, $Res Function(_$_ToBuy) then) =
      __$$_ToBuyCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? name, double? price, int? quantity, int? type});
}

/// @nodoc
class __$$_ToBuyCopyWithImpl<$Res> extends _$ToBuyCopyWithImpl<$Res>
    implements _$$_ToBuyCopyWith<$Res> {
  __$$_ToBuyCopyWithImpl(_$_ToBuy _value, $Res Function(_$_ToBuy) _then)
      : super(_value, (v) => _then(v as _$_ToBuy));

  @override
  _$_ToBuy get _value => super._value as _$_ToBuy;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_ToBuy(
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
class _$_ToBuy extends _ToBuy {
  const _$_ToBuy({this.id, this.name, this.price, this.quantity, this.type})
      : super._();

  factory _$_ToBuy.fromJson(Map<String, dynamic> json) =>
      _$$_ToBuyFromJson(json);

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
    return 'ToBuy(id: $id, name: $name, price: $price, quantity: $quantity, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ToBuy &&
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
  _$$_ToBuyCopyWith<_$_ToBuy> get copyWith =>
      __$$_ToBuyCopyWithImpl<_$_ToBuy>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ToBuyToJson(
      this,
    );
  }
}

abstract class _ToBuy extends ToBuy {
  const factory _ToBuy(
      {final int? id,
      final String? name,
      final double? price,
      final int? quantity,
      final int? type}) = _$_ToBuy;
  const _ToBuy._() : super._();

  factory _ToBuy.fromJson(Map<String, dynamic> json) = _$_ToBuy.fromJson;

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
  _$$_ToBuyCopyWith<_$_ToBuy> get copyWith =>
      throw _privateConstructorUsedError;
}

ToCall _$ToCallFromJson(Map<String, dynamic> json) {
  return _ToCall.fromJson(json);
}

/// @nodoc
mixin _$ToCall {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get number => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToCallCopyWith<ToCall> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToCallCopyWith<$Res> {
  factory $ToCallCopyWith(ToCall value, $Res Function(ToCall) then) =
      _$ToCallCopyWithImpl<$Res>;
  $Res call({int? id, String? name, String? number});
}

/// @nodoc
class _$ToCallCopyWithImpl<$Res> implements $ToCallCopyWith<$Res> {
  _$ToCallCopyWithImpl(this._value, this._then);

  final ToCall _value;
  // ignore: unused_field
  final $Res Function(ToCall) _then;

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
abstract class _$$_ToCallCopyWith<$Res> implements $ToCallCopyWith<$Res> {
  factory _$$_ToCallCopyWith(_$_ToCall value, $Res Function(_$_ToCall) then) =
      __$$_ToCallCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? name, String? number});
}

/// @nodoc
class __$$_ToCallCopyWithImpl<$Res> extends _$ToCallCopyWithImpl<$Res>
    implements _$$_ToCallCopyWith<$Res> {
  __$$_ToCallCopyWithImpl(_$_ToCall _value, $Res Function(_$_ToCall) _then)
      : super(_value, (v) => _then(v as _$_ToCall));

  @override
  _$_ToCall get _value => super._value as _$_ToCall;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? number = freezed,
  }) {
    return _then(_$_ToCall(
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
class _$_ToCall extends _ToCall {
  const _$_ToCall({this.id, this.name, this.number}) : super._();

  factory _$_ToCall.fromJson(Map<String, dynamic> json) =>
      _$$_ToCallFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? number;

  @override
  String toString() {
    return 'ToCall(id: $id, name: $name, number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ToCall &&
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
  _$$_ToCallCopyWith<_$_ToCall> get copyWith =>
      __$$_ToCallCopyWithImpl<_$_ToCall>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ToCallToJson(
      this,
    );
  }
}

abstract class _ToCall extends ToCall {
  const factory _ToCall(
      {final int? id, final String? name, final String? number}) = _$_ToCall;
  const _ToCall._() : super._();

  factory _ToCall.fromJson(Map<String, dynamic> json) = _$_ToCall.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get number;
  @override
  @JsonKey(ignore: true)
  _$$_ToCallCopyWith<_$_ToCall> get copyWith =>
      throw _privateConstructorUsedError;
}
