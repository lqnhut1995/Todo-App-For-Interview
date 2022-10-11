import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:interview_project/application/use_cases/list/list.dart';
import 'package:interview_project/application/use_cases/use_cases.dart';
import 'package:interview_project/domain/entities/list/list.dart';
import 'package:interview_project/domain/value_objects/value_objects.dart';
import 'package:interview_project/injection_container.dart';

part 'sell_bloc.freezed.dart';

@freezed
class SellState with _$SellState {
  const SellState._();
  const factory SellState({
    AsyncStatus? status,
    List<ToSell>? sellList,
  }) = _SellState;

  SellState busy() => copyWith(status: AsyncStatus.busy());
  SellState idle() => copyWith(status: AsyncStatus.idle());
  SellState failed() => copyWith(status: AsyncStatus.failed());
}

class SellBloc extends Cubit<SellState> {
  final _getToSellList = sl<GetToSellList>();

  SellBloc() : super(SellState().idle());

  void getToSellList() async {
    emit(state.busy());
    emit((await _getToSellList(NoParams())).fold(
        (l) => state.copyWith(sellList: l).idle(), (r) => state.failed()));
  }
}
