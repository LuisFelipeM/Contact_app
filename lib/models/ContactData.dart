// To parse this JSON data, do
//
//     final contactData = contactDataFromJson(jsonString);

import 'dart:convert';

ContactData contactDataFromJson(String str) =>
    ContactData.fromJson(json.decode(str));

String contactDataToJson(ContactData data) => json.encode(data.toJson());

class ContactData {
  ContactData({
    required this.id,
    required this.name,
    required this.phone,
    required this.email,
    required this.birthday,
  });

  int id;
  String name;
  String phone;
  String email;
  String birthday;

  factory ContactData.fromJson(Map<String, dynamic> json) => ContactData(
        id: json["id"],
        name: json["Name"],
        phone: json["Phone"],
        email: json["Email"],
        birthday: json["Birthday"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "Name": name,
        "Phone": phone,
        "Email": email,
        "Birthday": birthday,
      };
}
