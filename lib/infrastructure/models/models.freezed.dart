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

Language _$LanguageFromJson(Map<String, dynamic> json) {
  return _Language.fromJson(json);
}

/// @nodoc
mixin _$Language {
  int? get id => throw _privateConstructorUsedError;
  String? get languageName => throw _privateConstructorUsedError;
  String? get languageCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguageCopyWith<Language> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageCopyWith<$Res> {
  factory $LanguageCopyWith(Language value, $Res Function(Language) then) =
      _$LanguageCopyWithImpl<$Res>;
  $Res call({int? id, String? languageName, String? languageCode});
}

/// @nodoc
class _$LanguageCopyWithImpl<$Res> implements $LanguageCopyWith<$Res> {
  _$LanguageCopyWithImpl(this._value, this._then);

  final Language _value;
  // ignore: unused_field
  final $Res Function(Language) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? languageName = freezed,
    Object? languageCode = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      languageName: languageName == freezed
          ? _value.languageName
          : languageName // ignore: cast_nullable_to_non_nullable
              as String?,
      languageCode: languageCode == freezed
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_LanguageCopyWith<$Res> implements $LanguageCopyWith<$Res> {
  factory _$$_LanguageCopyWith(
          _$_Language value, $Res Function(_$_Language) then) =
      __$$_LanguageCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? languageName, String? languageCode});
}

/// @nodoc
class __$$_LanguageCopyWithImpl<$Res> extends _$LanguageCopyWithImpl<$Res>
    implements _$$_LanguageCopyWith<$Res> {
  __$$_LanguageCopyWithImpl(
      _$_Language _value, $Res Function(_$_Language) _then)
      : super(_value, (v) => _then(v as _$_Language));

  @override
  _$_Language get _value => super._value as _$_Language;

  @override
  $Res call({
    Object? id = freezed,
    Object? languageName = freezed,
    Object? languageCode = freezed,
  }) {
    return _then(_$_Language(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      languageName: languageName == freezed
          ? _value.languageName
          : languageName // ignore: cast_nullable_to_non_nullable
              as String?,
      languageCode: languageCode == freezed
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Language implements _Language {
  const _$_Language({this.id, this.languageName, this.languageCode});

  factory _$_Language.fromJson(Map<String, dynamic> json) =>
      _$$_LanguageFromJson(json);

  @override
  final int? id;
  @override
  final String? languageName;
  @override
  final String? languageCode;

  @override
  String toString() {
    return 'Language(id: $id, languageName: $languageName, languageCode: $languageCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Language &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.languageName, languageName) &&
            const DeepCollectionEquality()
                .equals(other.languageCode, languageCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(languageName),
      const DeepCollectionEquality().hash(languageCode));

  @JsonKey(ignore: true)
  @override
  _$$_LanguageCopyWith<_$_Language> get copyWith =>
      __$$_LanguageCopyWithImpl<_$_Language>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LanguageToJson(
      this,
    );
  }
}

abstract class _Language implements Language {
  const factory _Language(
      {final int? id,
      final String? languageName,
      final String? languageCode}) = _$_Language;

  factory _Language.fromJson(Map<String, dynamic> json) = _$_Language.fromJson;

  @override
  int? get id;
  @override
  String? get languageName;
  @override
  String? get languageCode;
  @override
  @JsonKey(ignore: true)
  _$$_LanguageCopyWith<_$_Language> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LanguageFont {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() english,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? english,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? english,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LanguageFontEnglish value) english,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LanguageFontEnglish value)? english,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LanguageFontEnglish value)? english,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageFontCopyWith<$Res> {
  factory $LanguageFontCopyWith(
          LanguageFont value, $Res Function(LanguageFont) then) =
      _$LanguageFontCopyWithImpl<$Res>;
}

/// @nodoc
class _$LanguageFontCopyWithImpl<$Res> implements $LanguageFontCopyWith<$Res> {
  _$LanguageFontCopyWithImpl(this._value, this._then);

  final LanguageFont _value;
  // ignore: unused_field
  final $Res Function(LanguageFont) _then;
}

/// @nodoc
abstract class _$$_LanguageFontEnglishCopyWith<$Res> {
  factory _$$_LanguageFontEnglishCopyWith(_$_LanguageFontEnglish value,
          $Res Function(_$_LanguageFontEnglish) then) =
      __$$_LanguageFontEnglishCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LanguageFontEnglishCopyWithImpl<$Res>
    extends _$LanguageFontCopyWithImpl<$Res>
    implements _$$_LanguageFontEnglishCopyWith<$Res> {
  __$$_LanguageFontEnglishCopyWithImpl(_$_LanguageFontEnglish _value,
      $Res Function(_$_LanguageFontEnglish) _then)
      : super(_value, (v) => _then(v as _$_LanguageFontEnglish));

  @override
  _$_LanguageFontEnglish get _value => super._value as _$_LanguageFontEnglish;
}

/// @nodoc

class _$_LanguageFontEnglish implements _LanguageFontEnglish {
  const _$_LanguageFontEnglish();

  @override
  String toString() {
    return 'LanguageFont.english()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LanguageFontEnglish);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() english,
  }) {
    return english();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? english,
  }) {
    return english?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? english,
    required TResult orElse(),
  }) {
    if (english != null) {
      return english();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LanguageFontEnglish value) english,
  }) {
    return english(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LanguageFontEnglish value)? english,
  }) {
    return english?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LanguageFontEnglish value)? english,
    required TResult orElse(),
  }) {
    if (english != null) {
      return english(this);
    }
    return orElse();
  }
}

abstract class _LanguageFontEnglish implements LanguageFont {
  const factory _LanguageFontEnglish() = _$_LanguageFontEnglish;
}
