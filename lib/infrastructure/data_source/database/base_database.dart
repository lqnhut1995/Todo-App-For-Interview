part of 'database.dart';

class BaseDatabase {
  static const databaseName = 'todo.db';
  static const version = 1;

  static const sellTableName = 'ItemToSell';

  Future<Database> getDatabase() async {
    var databasesPath = await getDatabasesPath();
    String path = '$databasesPath/$databaseName';

    return openDatabase(path, version: version,
        onCreate: (Database db, int version) async {
      final batch = db.batch();
      _createToSellTable(batch);
      IListLocalDataSource.insertToSellTable(batch);
      await batch.commit();
    });
  }

  void _createToSellTable(Batch batch) async {
    batch.execute(
      '''
        CREATE TABLE $sellTableName (
          ${ToSell.fieldId} INTEGER PRIMARY KEY,
           ${ToSell.fieldName} TEXT,
           ${ToSell.fieldPrice} REAL,
           ${ToSell.fieldQuantity} INTEGER,
           ${ToSell.fieldType} INTEGER
           );
        ''',
    );
  }
}
