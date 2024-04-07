import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Change Contact Info'),
        ),
        body: ChangeContactInfo(),
      ),
    );
  }
}

class ChangeContactInfo extends StatefulWidget {
  @override
  _ChangeContactInfoState createState() => _ChangeContactInfoState();
}

class _ChangeContactInfoState extends State<ChangeContactInfo> {
  String email = 'example@example.com';
  String phoneNumber = '123-456-7890';

  void _openDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Change Contact Info'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'Email'),
                onChanged: (value) {
                  setState(() {
                    email = value;
                  });
                },
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Phone Number'),
                onChanged: (value) {
                  setState(() {
                    phoneNumber = value;
                  });
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
                // Save changes
                Navigator.of(context).pop();
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Email: $email'),
            Text('Phone: $phoneNumber'),
          ],
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: _openDialog,
          child: Text('Change Contact Info'),
        ),
      ],
    );
  }
}
