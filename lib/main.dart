import 'package:flutter/material.dart';
import 'package:contacts_app/screens/screens.dart';
import 'package:contacts_app/theme/theme.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'dart:io';

import 'package:sqflite/sqflite.dart';

void main() => runApp(const ContactApp());

class ContactApp extends StatelessWidget {
  const ContactApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contact Apps',
      initialRoute: 'home_screen',
      routes: {
        'home_screen': (context) => homeScreen(),
        'contact_profile_screen': (context) => contactProfileScreen(),
        'new_contact_screen': (context) => newContactScreen(),
      },
      theme: customAppTheme.contactTheme,
    );
  }
}
