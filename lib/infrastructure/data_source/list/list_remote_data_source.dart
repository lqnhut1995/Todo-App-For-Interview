part of 'list.dart';

abstract class ListRemoteDataSource {
  Future<BaseResponse<List<MToBuy>>> getToBuy();
  Future<BaseResponse<List<MToCall>>> getToCall();
}

class IListRemoteDataSource implements ListRemoteDataSource {
  final Client client;

  IListRemoteDataSource(this.client);

  @override
  Future<BaseResponse<List<MToBuy>>> getToBuy() async {
    final uri = '$TO_BUY_URL';
    final json = await client.get(uri);

    return BaseResponse.dataFromJson<List<MToBuy>>(json);
  }

  @override
  Future<BaseResponse<List<MToCall>>> getToCall() async {
    final uri = '$TO_CALL_URL';
    final json = await client.get(uri);

    return BaseResponse.dataFromJson<List<MToCall>>(json);
  }
}
