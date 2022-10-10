/* spell-checker: disable */
part of 'config.dart';

abstract class ConfigRemoteDataSource {}

class IConfigRemoteDataSource implements ConfigRemoteDataSource {
  final Client client;

  IConfigRemoteDataSource({required this.client});
}
