import 'package:dartz/dartz.dart';
import 'package:interview_project/domain/entities/list/list.dart';
import 'package:interview_project/domain/errors/errors.dart';
import 'package:interview_project/domain/repositories/list_repository.dart';

import '../use_cases.dart';

class GetToBuyList
    implements IUseCase<NoParams, Either<List<ToBuy>, ListFailure>> {
  final ListRepository repository;

  GetToBuyList(this.repository);

  @override
  Future<Either<List<ToBuy>, ListFailure>> call(params) {
    return repository.getToBuyList();
  }
}
