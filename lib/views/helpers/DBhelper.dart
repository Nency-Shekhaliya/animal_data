import 'package:animal_data/views/modals/global.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Databasehelper {
  Databasehelper._();

  static final Databasehelper databasehelper = Databasehelper._();
  Database? db;

  Future<void> initdb() async {
    var directory = await getDatabasesPath();
    String path = join(directory, 'animal.db');
    db = await openDatabase(path, version: 1,
        onCreate: (Database database, int ver) {
      String Query =
          "CREATE TABLE IF NOT EXISTS  Animal( image BLOB NOT NULL, name TEXT NOT NULL)";
      database.execute(Query);
    });
  }

  Future<List> Fetchdata() async {
    await initdb();
    String Quorey = "SELECT * FROM Animal;";
    List allanimal = await db!.rawQuery(Quorey);
    List A = animal.animalimage;
    return A;
  }
}
