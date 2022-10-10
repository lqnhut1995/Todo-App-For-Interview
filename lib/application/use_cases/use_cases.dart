import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:interview_project/domain/errors/errors.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Type, Failure>> call(Params params);
}

abstract class IUseCase<Params, Result> {
  Future<Result> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}
