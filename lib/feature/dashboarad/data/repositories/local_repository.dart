import 'package:bookapp/feature/dashboarad/data/model/dbbook_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:async';

class LocalRepository {
  Future<Database> opendatabase() async {
    var databasePath = await getDatabasesPath();
    String path = join(databasePath, 'book.db');
    await deleteDatabase(path);
    Database database =
        await openDatabase(path, version: 1, onCreate: (db, version) async {
      await db.execute(
          'CREATE TABLE book_tb (id INTEGER PRIMARY KEY AUTOINCREMENT, book_code TEXT, title TEXT, description TEXT, category TEXT, date TEXT, price NUMERIC, cover BOLEAN  )');
    });
    return database;
  }

  Future insert(DBBookModel dbBookModel) async {
    var database = await opendatabase();
    await database.transaction((txn) async {
      await txn.rawInsert(
          'INSERT INTO book_tb(book_code, title, description,category, date, price, cover) VALUES(${dbBookModel.codeBook}${dbBookModel.title}${dbBookModel.description}${dbBookModel.categpry}${dbBookModel.harga} ${dbBookModel.cover})');
    });
  }

  Future delete(bookCode) async {
    var database = await opendatabase();
    await database
        .delete('book_tb', where: 'book_code = ?', whereArgs: [bookCode]);
  }
}
