part of 'list.dart';

abstract class ListLocalDataSource {
  Future<List<ToSell>> getToSellList();
}

class IListLocalDataSource implements ListLocalDataSource {
  final Database db;

  IListLocalDataSource(this.db);

  static void insertToSellTable(Batch batch) async {
    final query = '''
INSERT INTO ${BaseDatabase.sellTableName}(
  ${ToSell.fieldName}, 
  ${ToSell.fieldPrice}, 
  ${ToSell.fieldQuantity},
  ${ToSell.fieldType}
  ) VALUES(?, ?, ?, ?)
''';
    batch.rawInsert(
      query,
      ["iPhone X", 150000, 1, 2],
    );
    batch.rawInsert(
      query,
      ['TV', 38000, 2, 2],
    );
    batch.rawInsert(
      query,
      ['Table', 12000, 1, 2],
    );
  }

  @override
  Future<List<ToSell>> getToSellList() async {
    final query =
        await db.rawQuery('SELECT * FROM ${BaseDatabase.sellTableName}');
    return query.map((e) => ToSell.fromJson(e)).toList();
  }
}
