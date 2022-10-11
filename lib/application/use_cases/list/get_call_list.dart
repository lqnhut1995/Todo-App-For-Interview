import 'package:dartz/dartz.dart';
import 'package:interview_project/domain/entities/list/list.dart';
import 'package:interview_project/domain/errors/errors.dart';
import 'package:interview_project/domain/repositories/list_repository.dart';

import '../use_cases.dart';

class GetToCallList
    implements IUseCase<NoParams, Either<List<ToCall>, ListFailure>> {
  final ListRepository repository;

  GetToCallList(this.repository);

  @override
  Future<Either<List<ToCall>, ListFailure>> call(params) {
    return repository.getToCallList();
  }
}
