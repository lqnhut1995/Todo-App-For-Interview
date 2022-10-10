import 'package:dartz/dartz.dart';
import 'package:interview_project/domain/errors/errors.dart';
import 'package:interview_project/domain/repositories/config_repository.dart';

import '../use_cases.dart';

class GetTest implements IUseCase<NoParams, Either<String, ConfigFailure>> {
  final ConfigRepository repository;

  GetTest(this.repository);

  @override
  Future<Either<String, ConfigFailure>> call(params) {
    return repository.getConfig();
  }
}
