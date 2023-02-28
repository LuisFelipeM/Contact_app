import 'package:flutter/material.dart';
// widgets
import 'package:contacts_app/widgets/widgets.dart';
import 'package:contacts_app/database/DB.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // This will print DB path
    DB.database;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Contacts'),
      ),
      body: const contacts(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // new Contact Screen
          Navigator.of(context).pushNamed('new_contact_screen');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class contacts extends StatelessWidget {
  const contacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const ContactTab(),
          const ContactTab(),
          const ContactTab(),
          const ContactTab(),
        ],
      ),
    );
  }
}

class ContactTab extends StatelessWidget {
  const ContactTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        //Navigate to contact Profile Screen
        Navigator.of(context).pushNamed('contact_profile_screen');
      }),
      child: Container(
        height: 70,
        child: Row(
          children: [
            const CustomProfilePicture(),
            _ContactBriefInfo(),
          ],
        ),
      ),
    );
  }
}

class _ContactBriefInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Contact Name'),
          const Text('Number'),
        ],
      ),
    );
  }
}
