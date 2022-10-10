part of 'models.dart';

@freezed
class Language with _$Language {
  const factory Language({
    int? id,
    String? languageName,
    String? languageCode,
  }) = _Language;
  factory Language.fromJson(Map<String, dynamic> json) =>
      _$LanguageFromJson(json);
}

@freezed
class LanguageFont with _$LanguageFont {
  const factory LanguageFont.english() = _LanguageFontEnglish;
}
