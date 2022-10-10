// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'test_db.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TestDb _$TestDbFromJson(Map<String, dynamic> json) {
  return _TestDb.fromJson(json);
}

/// @nodoc
mixin _$TestDb {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  double? get num => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestDbCopyWith<TestDb> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestDbCopyWith<$Res> {
  factory $TestDbCopyWith(TestDb value, $Res Function(TestDb) then) =
      _$TestDbCopyWithImpl<$Res>;
  $Res call({int? id, String? name, String? value, double? num});
}

/// @nodoc
class _$TestDbCopyWithImpl<$Res> implements $TestDbCopyWith<$Res> {
  _$TestDbCopyWithImpl(this._value, this._then);

  final TestDb _value;
  // ignore: unused_field
  final $Res Function(TestDb) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? value = freezed,
    Object? num = freezed,
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
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      num: num == freezed
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$$_TestDbCopyWith<$Res> implements $TestDbCopyWith<$Res> {
  factory _$$_TestDbCopyWith(_$_TestDb value, $Res Function(_$_TestDb) then) =
      __$$_TestDbCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? name, String? value, double? num});
}

/// @nodoc
class __$$_TestDbCopyWithImpl<$Res> extends _$TestDbCopyWithImpl<$Res>
    implements _$$_TestDbCopyWith<$Res> {
  __$$_TestDbCopyWithImpl(_$_TestDb _value, $Res Function(_$_TestDb) _then)
      : super(_value, (v) => _then(v as _$_TestDb));

  @override
  _$_TestDb get _value => super._value as _$_TestDb;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? value = freezed,
    Object? num = freezed,
  }) {
    return _then(_$_TestDb(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      num: num == freezed
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TestDb extends _TestDb {
  const _$_TestDb({this.id, this.name, this.value, this.num}) : super._();

  factory _$_TestDb.fromJson(Map<String, dynamic> json) =>
      _$$_TestDbFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? value;
  @override
  final double? num;

  @override
  String toString() {
    return 'TestDb(id: $id, name: $name, value: $value, num: $num)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TestDb &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.num, num));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(num));

  @JsonKey(ignore: true)
  @override
  _$$_TestDbCopyWith<_$_TestDb> get copyWith =>
      __$$_TestDbCopyWithImpl<_$_TestDb>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TestDbToJson(
      this,
    );
  }
}

abstract class _TestDb extends TestDb {
  const factory _TestDb(
      {final int? id,
      final String? name,
      final String? value,
      final double? num}) = _$_TestDb;
  const _TestDb._() : super._();

  factory _TestDb.fromJson(Map<String, dynamic> json) = _$_TestDb.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get value;
  @override
  double? get num;
  @override
  @JsonKey(ignore: true)
  _$$_TestDbCopyWith<_$_TestDb> get copyWith =>
      throw _privateConstructorUsedError;
}
