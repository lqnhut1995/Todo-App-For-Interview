import 'package:interview_project/domain/errors/errors.dart';
import 'package:dartz/dartz.dart';
import 'package:interview_project/domain/repositories/config_repository.dart';
import 'package:interview_project/infrastructure/data_source/config/config.dart';
import 'package:interview_project/infrastructure/data_source/database/database.dart';

class IConfigRepository implements ConfigRepository {
  final ConfigLocalDataSource localDS;
  final ConfigRemoteDataSource configService;
  final LocalDatabase localDB;

  IConfigRepository(
      {required this.configService,
      required this.localDS,
      required this.localDB});

  @override
  Future<Either<String, ConfigFailure>> getConfig() async {
    return Left((await localDB.getTestTable()).first.toString());
  }
}
