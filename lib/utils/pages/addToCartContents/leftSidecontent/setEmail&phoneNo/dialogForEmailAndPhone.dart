import 'package:flutter/material.dart';

void openDialog(BuildContext context, String email, String phoneNumber, Function(String, String) onSave) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      String newEmail = email;
      String newPhoneNumber = phoneNumber;
      
      return AlertDialog(
        title: Text('Change Contact Info'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Email'),
              onChanged: (value) {
                newEmail = value;
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Phone Number'),
              onChanged: (value) {
                newPhoneNumber = value;
              },
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              onSave(newEmail, newPhoneNumber);
              Navigator.of(context).pop();
            },
            child: Text('Save'),
          ),
        ],
      );
    },
  );
}
