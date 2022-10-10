import 'package:dartz/dartz.dart';
import 'package:interview_project/domain/errors/errors.dart';

abstract class ConfigRepository {
  Future<Either<String, ConfigFailure>> getConfig();
}
