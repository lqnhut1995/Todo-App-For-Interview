// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'call_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CallState {
  AsyncStatus? get status => throw _privateConstructorUsedError;
  List<ToCall>? get callList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CallStateCopyWith<CallState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CallStateCopyWith<$Res> {
  factory $CallStateCopyWith(CallState value, $Res Function(CallState) then) =
      _$CallStateCopyWithImpl<$Res>;
  $Res call({AsyncStatus? status, List<ToCall>? callList});

  $AsyncStatusCopyWith<$Res>? get status;
}

/// @nodoc
class _$CallStateCopyWithImpl<$Res> implements $CallStateCopyWith<$Res> {
  _$CallStateCopyWithImpl(this._value, this._then);

  final CallState _value;
  // ignore: unused_field
  final $Res Function(CallState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? callList = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AsyncStatus?,
      callList: callList == freezed
          ? _value.callList
          : callList // ignore: cast_nullable_to_non_nullable
              as List<ToCall>?,
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
abstract class _$$_CallStateCopyWith<$Res> implements $CallStateCopyWith<$Res> {
  factory _$$_CallStateCopyWith(
          _$_CallState value, $Res Function(_$_CallState) then) =
      __$$_CallStateCopyWithImpl<$Res>;
  @override
  $Res call({AsyncStatus? status, List<ToCall>? callList});

  @override
  $AsyncStatusCopyWith<$Res>? get status;
}

/// @nodoc
class __$$_CallStateCopyWithImpl<$Res> extends _$CallStateCopyWithImpl<$Res>
    implements _$$_CallStateCopyWith<$Res> {
  __$$_CallStateCopyWithImpl(
      _$_CallState _value, $Res Function(_$_CallState) _then)
      : super(_value, (v) => _then(v as _$_CallState));

  @override
  _$_CallState get _value => super._value as _$_CallState;

  @override
  $Res call({
    Object? status = freezed,
    Object? callList = freezed,
  }) {
    return _then(_$_CallState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AsyncStatus?,
      callList: callList == freezed
          ? _value._callList
          : callList // ignore: cast_nullable_to_non_nullable
              as List<ToCall>?,
    ));
  }
}

/// @nodoc

class _$_CallState extends _CallState {
  const _$_CallState({this.status, final List<ToCall>? callList})
      : _callList = callList,
        super._();

  @override
  final AsyncStatus? status;
  final List<ToCall>? _callList;
  @override
  List<ToCall>? get callList {
    final value = _callList;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CallState(status: $status, callList: $callList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CallState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other._callList, _callList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(_callList));

  @JsonKey(ignore: true)
  @override
  _$$_CallStateCopyWith<_$_CallState> get copyWith =>
      __$$_CallStateCopyWithImpl<_$_CallState>(this, _$identity);
}

abstract class _CallState extends CallState {
  const factory _CallState(
      {final AsyncStatus? status, final List<ToCall>? callList}) = _$_CallState;
  const _CallState._() : super._();

  @override
  AsyncStatus? get status;
  @override
  List<ToCall>? get callList;
  @override
  @JsonKey(ignore: true)
  _$$_CallStateCopyWith<_$_CallState> get copyWith =>
      throw _privateConstructorUsedError;
}
