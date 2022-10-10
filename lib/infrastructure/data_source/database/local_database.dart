part of 'database.dart';

abstract class LocalDatabase {
  Future<List<Map<String, dynamic>>> getTestTable();
}

class ILocalDatabase implements LocalDatabase {
  final Database db;

  ILocalDatabase(this.db);

  @override
  Future<List<Map<String, dynamic>>> getTestTable() {
    return db.rawQuery('SELECT * FROM ${BaseDatabase.testTableName}');
  }
}
