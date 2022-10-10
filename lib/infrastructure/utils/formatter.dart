import 'package:intl/intl.dart';

class Formatter {
  Formatter._();

  // static final _nbFormatter = NumberFormat('#,##0.00');
  static final _eeee = DateFormat.EEEE();
  static final _HHmm = DateFormat('HH:mm');
  static final _HHmmA = DateFormat('hh:mm a');
  static final _ddMMyy = DateFormat('ddMMyy');
  static final _ddMMMyy = DateFormat('ddMMMyy');
  static final _ddMMMyyyy = DateFormat('dd MMM, yyyy');
  static final _yyyyMMdd = DateFormat('yyyyMMdd');
  static final _ddMyyyy = DateFormat('dd/M/yyyy');
  static final _ddMMM = DateFormat('dd MMM');
  static final _ddMMyyyy = DateFormat('dd/MM/yyyy');
  static final _MMddyyyy = DateFormat('MM/dd/yyyy');
  static final _yyyyMMMdd = DateFormat('yyyy MMM dd');
  static final _yyyy_MM_dd = DateFormat('yyyy-MM-dd');
  static final _MMMM_yyyy = DateFormat('MMMM yyyy');
  static final _yyyyMMddHHmm = DateFormat('yyyyMMdd HH:mm');
  static final _yyyyMMddHHmm2 = DateFormat('yyyy-MM-dd HH:mm');
  static final _ddMMyyyyhhmma = DateFormat('dd/MM/yyyy | hh:mm a');
  static final _ddMMyyyyhhmma2 = DateFormat('dd/MM/yyyy hh:mm a');
  static final _EEEddMMMhhmma = DateFormat('EEE, dd MMM - hh:mm a');
  static final _rawJson = DateFormat('yyyy-MM-dd\'T\'HH:mm:ssZ');
  static final _IDFormat = NumberFormat('000000');

  static String toRaw(DateTime date) {
    return _rawJson.format(date);
  }

  static DateTime fromRaw(dynamic t) => _rawJson.parse(t as String);
  static String HHmm(DateTime date) => _HHmm.format(date);
  static String HHmmA(DateTime date) => _HHmmA.format(date);
  static String eeee(DateTime date) => _eeee.format(date);
  static String ddMMyy(DateTime date) => _ddMMyy.format(date);
  static String ddMMM(DateTime date) => _ddMMM.format(date);
  static String ddMMMyy(DateTime date) => _ddMMMyy.format(date);
  static String ddMMMyyyy(DateTime date) => _ddMMMyyyy.format(date);
  static String ddMyyyy(DateTime date) => _ddMyyyy.format(date);
  static String ddMMyyyy(DateTime date) => _ddMMyyyy.format(date);
  static String MMddyyyy(DateTime date) => _MMddyyyy.format(date);
  static String yyyyMMMdd(DateTime date) => _yyyyMMMdd.format(date);
  static String yyyyMMdd(DateTime date) => _yyyyMMdd.format(date);
  static String yyyy_MM_dd(DateTime date) => _yyyy_MM_dd.format(date);
  static String yyyyMMddHHmm(DateTime date) => _yyyyMMddHHmm.format(date);
  static String MMMMyyyy(DateTime date) => _MMMM_yyyy.format(date);
  static String yyyyMMddHHmm2(DateTime date) => _yyyyMMddHHmm2.format(date);
  static String ddMMyyyyhhmma(DateTime date) => _ddMMyyyyhhmma.format(date);
  static String ddMMyyyyhhmma2(DateTime date) => _ddMMyyyyhhmma2.format(date);
  static String EEEddMMMhhmma(DateTime date) => _EEEddMMMhhmma.format(date);
  static String hhmmA(DateTime date) => _HHmmA.format(date);
  static String formatID(int? ID) => _IDFormat.format(ID ?? 0);
  static String durationToString(
    Duration d, {
    required String hourSymbol,
    required String minuteSymbol,
  }) {
    List<String> parts = d.toString().split(':');
    return '${parts[0].padLeft(2, '0')}${hourSymbol} ${parts[1].padLeft(2, '0')}${minuteSymbol}';
  }

  static String timeToString(
    int h,
    int m, {
    required String hourSymbol,
    required String minuteSymbol,
  }) {
    return '${h}${hourSymbol} ${m}${minuteSymbol}';
  }

  static String printTime(DateTime time) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitHours = twoDigits(time.hour.remainder(60));
    String twoDigitMinutes = twoDigits(time.minute.remainder(60));
    String a = DateFormat('a').format(time);
    return "$twoDigitHours:$twoDigitMinutes $a";
  }
}

Duration toDuration(String isoString) {
  if (!RegExp(
          r"^(-|\+)?P(?:([-+]?[0-9,.]*)Y)?(?:([-+]?[0-9,.]*)M)?(?:([-+]?[0-9,.]*)W)?(?:([-+]?[0-9,.]*)D)?(?:T(?:([-+]?[0-9,.]*)H)?(?:([-+]?[0-9,.]*)M)?(?:([-+]?[0-9,.]*)S)?)?$")
      .hasMatch(isoString)) {
    throw ArgumentError("String does not follow correct format");
  }

  final weeks = _parseTime(isoString, "W");
  final days = _parseTime(isoString, "D");
  final hours = _parseTime(isoString, "H");
  final minutes = _parseTime(isoString, "M");
  final seconds = _parseTime(isoString, "S");

  return Duration(
    days: days + (weeks * 7),
    hours: hours,
    minutes: minutes,
    seconds: seconds,
  );
}

/// Private helper method for extracting a time value from the ISO8601 string.
int _parseTime(String duration, String timeUnit) {
  final timeMatch = RegExp(r"\d+" + timeUnit).firstMatch(duration);

  if (timeMatch == null) {
    return 0;
  }
  final timeString = timeMatch.group(0);
  return int.parse(timeString!.substring(0, timeString.length - 1));
}
