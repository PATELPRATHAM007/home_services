import 'package:flutter/material.dart';
import 'package:home_services/utils/pages/addToCart/leftSidecontent/setEmail&phoneNo/dialogForEmailAndPhone.dart';

class SetEmailAndPhoneNo extends StatefulWidget {
  SetEmailAndPhoneNo({Key? key}) : super(key: key);

  @override
  State<SetEmailAndPhoneNo> createState() => _SetEmailAndPhoneNoState();
}

class _SetEmailAndPhoneNoState extends State<SetEmailAndPhoneNo> {
  String email = 'example@example.com';
  String phoneNumber = '123-456-7890';

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            serviceImage(),
            SizedBox(width: 20),
            sendBooking(),
          ],
        ),
        editButton(context)
      ],
    );
  }

  ElevatedButton editButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _openDialog(context);
      },
      child: Text("edit"),
    );
  }

  Column sendBooking() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Send booking details to",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        Text(
          '$email',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
        Text(
          '$phoneNumber',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }

  Padding serviceImage() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Colors.grey[200]!,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(
          Icons.location_on,
          color: Colors.grey[600],
        ),
      ),
    );
  }

  void _openDialog(BuildContext context) {
    openDialog(context, email, phoneNumber,
        (String newEmail, String newPhoneNumber) {
      setState(() {
        email = newEmail;
        phoneNumber = newPhoneNumber;
      });
    });
  }
}
