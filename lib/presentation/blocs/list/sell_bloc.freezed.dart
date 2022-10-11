// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sell_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SellState {
  AsyncStatus? get status => throw _privateConstructorUsedError;
  List<ToSell>? get sellList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SellStateCopyWith<SellState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SellStateCopyWith<$Res> {
  factory $SellStateCopyWith(SellState value, $Res Function(SellState) then) =
      _$SellStateCopyWithImpl<$Res>;
  $Res call({AsyncStatus? status, List<ToSell>? sellList});

  $AsyncStatusCopyWith<$Res>? get status;
}

/// @nodoc
class _$SellStateCopyWithImpl<$Res> implements $SellStateCopyWith<$Res> {
  _$SellStateCopyWithImpl(this._value, this._then);

  final SellState _value;
  // ignore: unused_field
  final $Res Function(SellState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? sellList = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AsyncStatus?,
      sellList: sellList == freezed
          ? _value.sellList
          : sellList // ignore: cast_nullable_to_non_nullable
              as List<ToSell>?,
    ));
  }

  @override
  $AsyncStatusCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $AsyncStatusCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

/// @nodoc
abstract class _$$_SellStateCopyWith<$Res> implements $SellStateCopyWith<$Res> {
  factory _$$_SellStateCopyWith(
          _$_SellState value, $Res Function(_$_SellState) then) =
      __$$_SellStateCopyWithImpl<$Res>;
  @override
  $Res call({AsyncStatus? status, List<ToSell>? sellList});

  @override
  $AsyncStatusCopyWith<$Res>? get status;
}

/// @nodoc
class __$$_SellStateCopyWithImpl<$Res> extends _$SellStateCopyWithImpl<$Res>
    implements _$$_SellStateCopyWith<$Res> {
  __$$_SellStateCopyWithImpl(
      _$_SellState _value, $Res Function(_$_SellState) _then)
      : super(_value, (v) => _then(v as _$_SellState));

  @override
  _$_SellState get _value => super._value as _$_SellState;

  @override
  $Res call({
    Object? status = freezed,
    Object? sellList = freezed,
  }) {
    return _then(_$_SellState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AsyncStatus?,
      sellList: sellList == freezed
          ? _value._sellList
          : sellList // ignore: cast_nullable_to_non_nullable
              as List<ToSell>?,
    ));
  }
}

/// @nodoc

class _$_SellState extends _SellState {
  const _$_SellState({this.status, final List<ToSell>? sellList})
      : _sellList = sellList,
        super._();

  @override
  final AsyncStatus? status;
  final List<ToSell>? _sellList;
  @override
  List<ToSell>? get sellList {
    final value = _sellList;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SellState(status: $status, sellList: $sellList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SellState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other._sellList, _sellList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(_sellList));

  @JsonKey(ignore: true)
  @override
  _$$_SellStateCopyWith<_$_SellState> get copyWith =>
      __$$_SellStateCopyWithImpl<_$_SellState>(this, _$identity);
}

abstract class _SellState extends SellState {
  const factory _SellState(
      {final AsyncStatus? status, final List<ToSell>? sellList}) = _$_SellState;
  const _SellState._() : super._();

  @override
  AsyncStatus? get status;
  @override
  List<ToSell>? get sellList;
  @override
  @JsonKey(ignore: true)
  _$$_SellStateCopyWith<_$_SellState> get copyWith =>
      throw _privateConstructorUsedError;
}
