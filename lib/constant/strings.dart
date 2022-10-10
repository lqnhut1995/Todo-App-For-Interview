class Strings {
  Strings._();

  /// Net work Interceptors
  static const option_custom_key = 'requires-token';

  static String joinString(List<dynamic> objects, String seperator) {
    final filter = ["", null, false, 0];
    final result = objects.where((e) => !filter.contains(e)).join(seperator);
    return result;
  }
}
