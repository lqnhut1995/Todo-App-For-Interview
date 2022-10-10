part of 'database.dart';

class BaseDatabase {
  static const databaseName = 'demo.db';
  static const version = 1;

  static const testTableName = 'Test';

  Future<Database> getDatabase() async {
    var databasesPath = await getDatabasesPath();
    String path = '$databasesPath/$databaseName';

    return openDatabase(path, version: version,
        onCreate: (Database db, int version) async {
      final batch = db.batch();
      _createTestTable(batch);
      _insertTestTable(batch);
      await batch.commit();
    });
  }

  void _createTestTable(Batch batch) async {
    batch.execute(
      '''
        CREATE TABLE $testTableName (
          ${TestDb.fieldId} INTEGER PRIMARY KEY,
           ${TestDb.fieldName} TEXT, 
           ${TestDb.fieldValue} INTEGER, 
           ${TestDb.fieldNum} REAL
           );
        ''',
    );
  }

  void _insertTestTable(Batch batch) async {
    batch.rawInsert('''
INSERT INTO $testTableName(
  ${TestDb.fieldName}, 
  ${TestDb.fieldValue}, 
  ${TestDb.fieldNum}
  ) VALUES(?, ?, ?)
''', ["some name", 1234, 456.789]);
    batch.rawInsert('''
  INSERT INTO $testTableName(
    ${TestDb.fieldName}, 
    ${TestDb.fieldValue}, 
    ${TestDb.fieldNum}) VALUES(?, ?, ?)
''', ['another name', 12345678, 3.1416]);
  }
}
