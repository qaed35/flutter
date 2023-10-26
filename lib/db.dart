import 'dart:async';
import 'package:path/path.dart';
// import 'package:path_provider/path_provider.dart';
import 'package:flutter/widgets.dart';
import 'package:sqflite/sqflite.dart';
import 'package:qaed/screens/order.dart';

void mainn() async {
  WidgetsFlutterBinding.ensureInitialized();
  final Future<Database> database = openDatabase(
    join(await getDatabasesPath(), 'data.db'),
    onCreate: (db, version) {
      return db.execute(
          'CREATE TABLE notes(id INTEGER KEY, address TEXT, notee TEXT)');
    },
    version: 1,
  );

  // insert
  Future<void> insert(note n) async {
    final Database db = await database;
    await db.insert(
      'notes',
      n.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // read
  Future<List<note>> read() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('notes');
    return List.generate(maps.length, (i) {
      return note(
          id: maps[i]['id'],
          address: maps[i]['address'],
          notee: maps[i]['notee']);
    });
  }

  //update
  Future<void> update(note u) async {
    final Database db = await database;
    await db.update(
      'notes',
      u.toMap(),
      where: 'id = ?',
      whereArgs: [u.id],
    );
  }

  //delete
  Future<void> delete(int id) async {
    final Database db = await database;
    await db.delete(
      'notes',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  var ff = note(
    id: 1,
    address: 'qqqqqqq',
    notee: 'hgfds',
  );

  await insert(ff);
  print(await note());
}

class note {
  late final int id = order().id;
  late final String? address = order().itme;
  late final String? notee = order().itme1;

  note({id, address, notee});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'address': address,
      'notee': notee,
    };
  }

  @override
  String toString() {
    return 'notes{id:$id, address:$address, notee:$notee}';
    print('qwdefrghjkl');
  }
}
