import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Userdb {
  static final Userdb _instance = Userdb._internal();
  factory Userdb() => _instance;
  Userdb._internal();

  Database? database;

  Future<Database> _getDb() async {
    if (database != null) return database!;

    final path = join(await getDatabasesPath(), "userdb.db");

    database = await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE user(
            user_id INTEGER PRIMARY KEY AUTOINCREMENT,
            user_name TEXT,
            user_phone_number TEXT,
            user_job TEXT
          )
        ''');
      },
    );

    return database!;
  }

  Future<void> insertData({
    required String userName,
    required String phoneNumber,
    required String userJob,
  }) async {
    final db = await _getDb();
    await db.insert("user", {
      "user_name": userName,
      "user_phone_number": phoneNumber,
      "user_job": userJob,
    });
  }

  Future<List<Map>> getData() async {
    final db = await _getDb();
    return await db.query("user");
  }

  Future<void> updateData({
    required int userId,
    required String userName,
    required String userPhone,
    required String userJob,
  }) async {
    final db = await _getDb();
    await db.update(
      "user",
      {
        "user_name": userName,
        "user_phone_number": userPhone,
        "user_job": userJob,
      },
      where: "user_id = ?",
      whereArgs: [userId],
    );
  }

  Future<void> deleteUser({required int id}) async {
    final db = await _getDb();
    await db.delete(
      "user",
      where: "user_id = ?",
      whereArgs: [id],
    );
  }
}