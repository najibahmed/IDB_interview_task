import 'dart:async';
import 'dart:ffi';
import 'dart:typed_data';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:idb_interview_task/models/book_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';


class DbHelper {
 static Database? _db;
  Future<List<Books>> getBooks()async{
   var dbClint= await db;
   List<Map> list = await dbClint!.rawQuery("SELECT * FROM books");
   List<Books> books =[];
   for(var book in list){
     books.add(Books(book["id"], book["title"], book["title_ar"], book["number_of_hadis"], book["abvr_code"], book["book_name"], book["book_descr"]));
   }
   return books;
 }

 Future<Database?> get db async{
   if(_db!=null)return _db;
   _db = await initDb();
   return _db;
 }

  Future initDb() async {
    var databasesPath = await getDatabasesPath();
    var path = join(databasesPath, "hadith_db.db");

// Check if the database exists
    var exists = await databaseExists(path);

    if (!exists) {
// Should happen only the first time you launch your application
      print("Creating new copy from asset");

// Make sure the parent directory exists
      try {
        await Directory(dirname(path)).create(recursive: true);
      } catch (_) {}

// Copy from asset
      ByteData data = await rootBundle.load(url.join("assets/db", "hadith_db.db"));
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

// Write and flush the bytes written
      await File(path).writeAsBytes(bytes, flush: true);
    } else {
      print("Opening existing database");
    }
    // open the database
    Database theDb = await openDatabase(path,readOnly: true);

    return theDb;
  }
}



