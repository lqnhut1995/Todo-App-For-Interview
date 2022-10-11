import '../widgets/shared/dialog/easy_loading/easy_loading.dart';

bool isShow() => EasyLoading.isShow;

Future<void>? showLoading() => !isShow() ? EasyLoading.show() : null;

Future<void>? dismissLoading() => isShow() ? EasyLoading.dismiss() : null;
