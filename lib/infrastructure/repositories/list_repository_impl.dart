import 'package:interview_project/domain/entities/list/list.dart';
import 'package:interview_project/domain/errors/errors.dart';
import 'package:dartz/dartz.dart';
import 'package:interview_project/domain/repositories/list_repository.dart';
import 'package:interview_project/infrastructure/data_source/data_source.dart';

class IListRepository implements ListRepository {
  final ListRemoteDataSource listRemoteService;
  final ListLocalDataSource listLocalService;

  IListRepository({
    required this.listRemoteService,
    required this.listLocalService,
  });

  @override
  Future<Either<List<ToSell>, ListFailure>> getToSellList() async {
    try {
      final sellList = await listLocalService.getToSellList();
      if (sellList.isNotEmpty) return Left(sellList);
      return Right(ListFailure.unableToGetToSellList());
    } catch (e) {
      print('unableToGetToSellList: $e');
      return Right(ListFailure.unableToGetToSellList());
    }
  }

  @override
  Future<Either<List<ToBuy>, ListFailure>> getToBuyList() async {
    try {
      final buyList = await listRemoteService.getToBuy();
      if (buyList.valid) {
        final res = buyList.responseData.map((e) => e.toDomain()).toList();
        return Left(res);
      }
      return Right(ListFailure.unableToGetToBuyList());
    } catch (e) {
      print('unableToGetToBuyList: $e');
      return Right(ListFailure.unableToGetToBuyList());
    }
  }

  @override
  Future<Either<List<ToCall>, ListFailure>> getToCallList() async {
    try {
      final callList = await listRemoteService.getToCall();
      if (callList.valid) {
        final res = callList.responseData.map((e) => e.toDomain()).toList();
        return Left(res);
      }
      return Right(ListFailure.unableToGetToCallList());
    } catch (e) {
      print('unableToGetToCallList: $e');
      return Right(ListFailure.unableToGetToCallList());
    }
  }
}
