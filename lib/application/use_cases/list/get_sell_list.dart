import 'package:dartz/dartz.dart';
import 'package:interview_project/domain/entities/list/list.dart';
import 'package:interview_project/domain/errors/errors.dart';
import 'package:interview_project/domain/repositories/list_repository.dart';

import '../use_cases.dart';

class GetToSellList
    implements IUseCase<NoParams, Either<List<ToSell>, ListFailure>> {
  final ListRepository repository;

  GetToSellList(this.repository);

  @override
  Future<Either<List<ToSell>, ListFailure>> call(params) {
    return repository.getToSellList();
  }
}
