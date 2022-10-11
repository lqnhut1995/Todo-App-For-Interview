// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'buy_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BuyState {
  AsyncStatus? get status => throw _privateConstructorUsedError;
  List<ToBuy>? get buyList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BuyStateCopyWith<BuyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuyStateCopyWith<$Res> {
  factory $BuyStateCopyWith(BuyState value, $Res Function(BuyState) then) =
      _$BuyStateCopyWithImpl<$Res>;
  $Res call({AsyncStatus? status, List<ToBuy>? buyList});

  $AsyncStatusCopyWith<$Res>? get status;
}

/// @nodoc
class _$BuyStateCopyWithImpl<$Res> implements $BuyStateCopyWith<$Res> {
  _$BuyStateCopyWithImpl(this._value, this._then);

  final BuyState _value;
  // ignore: unused_field
  final $Res Function(BuyState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? buyList = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AsyncStatus?,
      buyList: buyList == freezed
          ? _value.buyList
          : buyList // ignore: cast_nullable_to_non_nullable
              as List<ToBuy>?,
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
abstract class _$$_BuyStateCopyWith<$Res> implements $BuyStateCopyWith<$Res> {
  factory _$$_BuyStateCopyWith(
          _$_BuyState value, $Res Function(_$_BuyState) then) =
      __$$_BuyStateCopyWithImpl<$Res>;
  @override
  $Res call({AsyncStatus? status, List<ToBuy>? buyList});

  @override
  $AsyncStatusCopyWith<$Res>? get status;
}

/// @nodoc
class __$$_BuyStateCopyWithImpl<$Res> extends _$BuyStateCopyWithImpl<$Res>
    implements _$$_BuyStateCopyWith<$Res> {
  __$$_BuyStateCopyWithImpl(
      _$_BuyState _value, $Res Function(_$_BuyState) _then)
      : super(_value, (v) => _then(v as _$_BuyState));

  @override
  _$_BuyState get _value => super._value as _$_BuyState;

  @override
  $Res call({
    Object? status = freezed,
    Object? buyList = freezed,
  }) {
    return _then(_$_BuyState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AsyncStatus?,
      buyList: buyList == freezed
          ? _value._buyList
          : buyList // ignore: cast_nullable_to_non_nullable
              as List<ToBuy>?,
    ));
  }
}

/// @nodoc

class _$_BuyState extends _BuyState {
  const _$_BuyState({this.status, final List<ToBuy>? buyList})
      : _buyList = buyList,
        super._();

  @override
  final AsyncStatus? status;
  final List<ToBuy>? _buyList;
  @override
  List<ToBuy>? get buyList {
    final value = _buyList;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BuyState(status: $status, buyList: $buyList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BuyState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other._buyList, _buyList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(_buyList));

  @JsonKey(ignore: true)
  @override
  _$$_BuyStateCopyWith<_$_BuyState> get copyWith =>
      __$$_BuyStateCopyWithImpl<_$_BuyState>(this, _$identity);
}

abstract class _BuyState extends BuyState {
  const factory _BuyState(
      {final AsyncStatus? status, final List<ToBuy>? buyList}) = _$_BuyState;
  const _BuyState._() : super._();

  @override
  AsyncStatus? get status;
  @override
  List<ToBuy>? get buyList;
  @override
  @JsonKey(ignore: true)
  _$$_BuyStateCopyWith<_$_BuyState> get copyWith =>
      throw _privateConstructorUsedError;
}
