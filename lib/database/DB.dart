import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:sqflite/sqflite.dart';
import '../models/ContactData.dart';

class DB {
  // Creates a connection to the DB
  static Database? _database;

  static Future<Database> get database async {
    if (_database != null) return _database!;

    // If _database is null, instantiate it
    _database = await _initDatabase();
    return _database!;
  }

  // Creates the data base
  static Future<Database> _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'contacts.db');
    print(path);
    return await openDatabase(
      path,
      version: 2,
      onOpen: (db) {},
      onCreate: (Database db, int version) {
        return db.execute(
            'CREATE TABLE contacts (id INTEGER PRIMARY KEY, name TEXT, phone INTEGER, email TEXT, birthday DATE)');
      },
    );
  }

  // Get database path
  static Future<String> getDatabasePath() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'contacts.db');
    print(path);
    return path;
  }

  // Insert new contact to the database
  static Future<int> newContact(ContactData newContact) async {
    Database database = await _initDatabase();

    return database.insert(
      "contacts",
      newContact.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Delete contact from  the database
  static Future<int> deleteContact(int id) async {
    Database database = await _initDatabase();

    return database.delete("contacts", where: "id = ?", whereArgs: [id]);
  }

  // Update contact from database
  static Future<int> updateContact(ContactData updateContact) async {
    Database database = await _initDatabase();

    return database.update("contacts", updateContact.toJson(),
        where: "id = ?", whereArgs: [updateContact.id]);
  }

  // get contacts List
  static Future<List<ContactData>> getContacts() async {
    Database database = await _initDatabase();

    final List<Map<String, dynamic>> contactsMap =
        await database.query("contacts");

    return List.generate(
        contactsMap.length,
        (i) => ContactData(
            id: contactsMap[i]['id'],
            name: contactsMap[i]['name'],
            phone: contactsMap[i]['phone'],
            email: contactsMap[i]['email'],
            birthday: contactsMap[i]['birthday']));
  }
}

// https://www.youtube.com/watch?v=UpKrhZ0Hppk&t=19s