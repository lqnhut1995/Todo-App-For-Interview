/* spell-checker: disable */
part of 'account.dart';

abstract class AccountRemoteDataSource {}

class IAccountRemoteDataSource implements AccountRemoteDataSource {
  final Client client;

  IAccountRemoteDataSource({required this.client});

  void logging(dynamic data) => log(jsonEncode(data));
}
