import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:interview_project/application/use_cases/config/get_test.dart';
import 'package:interview_project/application/use_cases/use_cases.dart';
import 'package:interview_project/domain/value_objects/value_objects.dart';
import 'package:interview_project/infrastructure/models/models.dart';
import 'package:interview_project/injection_container.dart';

part 'config_bloc.freezed.dart';

@freezed
class ConfigState with _$ConfigState {
  const ConfigState._();
  const factory ConfigState({
    AsyncStatus? status,
    Language? language,
    LanguageFont? languageFont,
  }) = _ConfigState;

  ConfigState busy() => copyWith(status: AsyncStatus.busy());
  ConfigState idle() => copyWith(status: AsyncStatus.idle());
  ConfigState failed() => copyWith(status: AsyncStatus.failed());
}

class ConfigBloc extends Cubit<ConfigState> {
  final _getTest = sl<GetTest>();

  ConfigBloc() : super(ConfigState().idle());

  int get $languageId => $language.id ?? 0;

  Language get $language =>
      state.language ??
      Language(
        id: 1,
        languageName: 'English',
        languageCode: 'en-US',
      );

  void getTest() async {
    (await _getTest(NoParams())).fold((l) => print(l), (r) => null);
  }
}
