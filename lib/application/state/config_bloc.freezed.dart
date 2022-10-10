// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'config_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConfigState {
  AsyncStatus? get status => throw _privateConstructorUsedError;
  Language? get language => throw _privateConstructorUsedError;
  LanguageFont? get languageFont => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConfigStateCopyWith<ConfigState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfigStateCopyWith<$Res> {
  factory $ConfigStateCopyWith(
          ConfigState value, $Res Function(ConfigState) then) =
      _$ConfigStateCopyWithImpl<$Res>;
  $Res call(
      {AsyncStatus? status, Language? language, LanguageFont? languageFont});

  $AsyncStatusCopyWith<$Res>? get status;
  $LanguageCopyWith<$Res>? get language;
  $LanguageFontCopyWith<$Res>? get languageFont;
}

/// @nodoc
class _$ConfigStateCopyWithImpl<$Res> implements $ConfigStateCopyWith<$Res> {
  _$ConfigStateCopyWithImpl(this._value, this._then);

  final ConfigState _value;
  // ignore: unused_field
  final $Res Function(ConfigState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? language = freezed,
    Object? languageFont = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AsyncStatus?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Language?,
      languageFont: languageFont == freezed
          ? _value.languageFont
          : languageFont // ignore: cast_nullable_to_non_nullable
              as LanguageFont?,
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

  @override
  $LanguageCopyWith<$Res>? get language {
    if (_value.language == null) {
      return null;
    }

    return $LanguageCopyWith<$Res>(_value.language!, (value) {
      return _then(_value.copyWith(language: value));
    });
  }

  @override
  $LanguageFontCopyWith<$Res>? get languageFont {
    if (_value.languageFont == null) {
      return null;
    }

    return $LanguageFontCopyWith<$Res>(_value.languageFont!, (value) {
      return _then(_value.copyWith(languageFont: value));
    });
  }
}

/// @nodoc
abstract class _$$_ConfigStateCopyWith<$Res>
    implements $ConfigStateCopyWith<$Res> {
  factory _$$_ConfigStateCopyWith(
          _$_ConfigState value, $Res Function(_$_ConfigState) then) =
      __$$_ConfigStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {AsyncStatus? status, Language? language, LanguageFont? languageFont});

  @override
  $AsyncStatusCopyWith<$Res>? get status;
  @override
  $LanguageCopyWith<$Res>? get language;
  @override
  $LanguageFontCopyWith<$Res>? get languageFont;
}

/// @nodoc
class __$$_ConfigStateCopyWithImpl<$Res> extends _$ConfigStateCopyWithImpl<$Res>
    implements _$$_ConfigStateCopyWith<$Res> {
  __$$_ConfigStateCopyWithImpl(
      _$_ConfigState _value, $Res Function(_$_ConfigState) _then)
      : super(_value, (v) => _then(v as _$_ConfigState));

  @override
  _$_ConfigState get _value => super._value as _$_ConfigState;

  @override
  $Res call({
    Object? status = freezed,
    Object? language = freezed,
    Object? languageFont = freezed,
  }) {
    return _then(_$_ConfigState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AsyncStatus?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Language?,
      languageFont: languageFont == freezed
          ? _value.languageFont
          : languageFont // ignore: cast_nullable_to_non_nullable
              as LanguageFont?,
    ));
  }
}

/// @nodoc

class _$_ConfigState extends _ConfigState {
  const _$_ConfigState({this.status, this.language, this.languageFont})
      : super._();

  @override
  final AsyncStatus? status;
  @override
  final Language? language;
  @override
  final LanguageFont? languageFont;

  @override
  String toString() {
    return 'ConfigState(status: $status, language: $language, languageFont: $languageFont)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConfigState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.language, language) &&
            const DeepCollectionEquality()
                .equals(other.languageFont, languageFont));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(language),
      const DeepCollectionEquality().hash(languageFont));

  @JsonKey(ignore: true)
  @override
  _$$_ConfigStateCopyWith<_$_ConfigState> get copyWith =>
      __$$_ConfigStateCopyWithImpl<_$_ConfigState>(this, _$identity);
}

abstract class _ConfigState extends ConfigState {
  const factory _ConfigState(
      {final AsyncStatus? status,
      final Language? language,
      final LanguageFont? languageFont}) = _$_ConfigState;
  const _ConfigState._() : super._();

  @override
  AsyncStatus? get status;
  @override
  Language? get language;
  @override
  LanguageFont? get languageFont;
  @override
  @JsonKey(ignore: true)
  _$$_ConfigStateCopyWith<_$_ConfigState> get copyWith =>
      throw _privateConstructorUsedError;
}
