import 'package:flutter/material.dart';
import 'package:contacts_app/widgets/widgets.dart';

class newContactScreen extends StatelessWidget {
  //const newContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Contact'),
      ),
      body: Container(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const SizedBox(
              height: 25,
            ),
            const customFormField(
              fieldName: 'Person Name',
              fieldIcon: Icon(Icons.person),
              fieldType: TextInputType.name,
            ),
            const customFormField(
              fieldName: 'Phone',
              fieldIcon: Icon(Icons.phone),
              fieldType: TextInputType.phone,
            ),
            const customFormField(
              fieldName: 'Email',
              fieldIcon: Icon(Icons.email),
              fieldType: TextInputType.emailAddress,
            ),
            const customFormField(
              fieldName: 'Birthday',
              fieldIcon: Icon(Icons.calendar_month_rounded),
              fieldType: TextInputType.datetime,
            ),
            CustomButton(
              buttonName: 'Save',
            ),
          ],
        ),
      ),
    );
  }
}
