part of 'account.dart';

abstract class AccountLocalDataSource {}

class IAccountLocalDataSource implements AccountLocalDataSource {
  final FlutterSecureStorage storage;

  IAccountLocalDataSource({required this.storage});
}
