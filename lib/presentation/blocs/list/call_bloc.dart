import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:interview_project/application/use_cases/list/list.dart';
import 'package:interview_project/application/use_cases/use_cases.dart';
import 'package:interview_project/domain/entities/list/list.dart';
import 'package:interview_project/domain/value_objects/value_objects.dart';
import 'package:interview_project/injection_container.dart';

part 'call_bloc.freezed.dart';

@freezed
class CallState with _$CallState {
  const CallState._();
  const factory CallState({
    AsyncStatus? status,
    List<ToCall>? callList,
  }) = _CallState;

  CallState busy() => copyWith(status: AsyncStatus.busy());
  CallState idle() => copyWith(status: AsyncStatus.idle());
  CallState failed() => copyWith(status: AsyncStatus.failed());
}

class CallBloc extends Cubit<CallState> {
  final _getToCallList = sl<GetToCallList>();

  CallBloc() : super(CallState().idle());

  void getToCallList() async {
    emit(state.busy());
    emit((await _getToCallList(NoParams())).fold(
        (l) => state.copyWith(callList: l).idle(), (r) => state.failed()));
  }
}
