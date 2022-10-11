import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:interview_project/application/use_cases/list/list.dart';
import 'package:interview_project/application/use_cases/use_cases.dart';
import 'package:interview_project/domain/entities/list/list.dart';
import 'package:interview_project/domain/value_objects/value_objects.dart';
import 'package:interview_project/injection_container.dart';

part 'buy_bloc.freezed.dart';

@freezed
class BuyState with _$BuyState {
  const BuyState._();
  const factory BuyState({
    AsyncStatus? status,
    List<ToBuy>? buyList,
  }) = _BuyState;

  BuyState busy() => copyWith(status: AsyncStatus.busy());
  BuyState idle() => copyWith(status: AsyncStatus.idle());
  BuyState failed() => copyWith(status: AsyncStatus.failed());
}

class BuyBloc extends Cubit<BuyState> {
  final _getToBuyList = sl<GetToBuyList>();

  BuyBloc() : super(BuyState().idle());

  void getToBuyList() async {
    emit(state.busy());
    emit((await _getToBuyList(NoParams()))
        .fold((l) => state.copyWith(buyList: l).idle(), (r) => state.failed()));
  }
}
