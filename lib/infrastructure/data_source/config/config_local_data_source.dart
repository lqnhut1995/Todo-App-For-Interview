part of 'config.dart';

abstract class ConfigLocalDataSource {}

class IConfigLocalDataSource implements ConfigLocalDataSource {
  final FlutterSecureStorage storage;

  IConfigLocalDataSource(this.storage);
}
