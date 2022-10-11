import 'package:dartz/dartz.dart';
import 'package:interview_project/domain/entities/list/list.dart';
import 'package:interview_project/domain/errors/errors.dart';

abstract class ListRepository {
  Future<Either<List<ToSell>, ListFailure>> getToSellList();
  Future<Either<List<ToBuy>, ListFailure>> getToBuyList();
  Future<Either<List<ToCall>, ListFailure>> getToCallList();
}
