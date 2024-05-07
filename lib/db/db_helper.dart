import 'dart:ffi';
import 'dart:typed_data';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';


class DbHelper {





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
    Database db = await openDatabase(path, readOnly: true);

    // return await DynamicLibrary.open(path);
  }
}



