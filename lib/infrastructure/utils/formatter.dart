import 'package:intl/intl.dart';

class Formatter {
  Formatter._();

  // static final _nbFormatter = NumberFormat('#,##0.00');
  static final _eeee = DateFormat.EEEE();
  static final _HHmm = DateFormat('HH:mm');
  static final _HHmmA = DateFormat('hh:mm a');
  static final _ddMMyy = DateFormat('ddMMyy');
  static final _ddMMMyy = DateFormat('ddMMMyy');
  static final _ddMMyyyy = DateFormat('dd/MM/yyyy');
  static final _MMddyyyy = DateFormat('MM/dd/yyyy');
  static final _rawJson = DateFormat('yyyy-MM-dd\'T\'HH:mm:ssZ');

  static String toRaw(DateTime date) {
    return _rawJson.format(date);
  }

  static DateTime fromRaw(dynamic t) => _rawJson.parse(t as String);
  static String HHmm(DateTime date) => _HHmm.format(date);
  static String HHmmA(DateTime date) => _HHmmA.format(date);
  static String eeee(DateTime date) => _eeee.format(date);
  static String ddMMyy(DateTime date) => _ddMMyy.format(date);
  static String ddMMMyy(DateTime date) => _ddMMMyy.format(date);
  static String ddMMyyyy(DateTime date) => _ddMMyyyy.format(date);
  static String MMddyyyy(DateTime date) => _MMddyyyy.format(date);
  static String hhmmA(DateTime date) => _HHmmA.format(date);
}
