import 'package:flutter/material.dart';

class SetPaymentDetails extends StatefulWidget {
  const SetPaymentDetails({Key? key}) : super(key: key);

  @override
  State<SetPaymentDetails> createState() => _SetPaymentDetailsState();
}

class _SetPaymentDetailsState extends State<SetPaymentDetails> {
  String paymentMethod = 'Credit Card';
  String cardNumber = '**** **** **** 1234';
  String expiryDate = 'MM/YY';

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.grey[200]!,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.credit_card,
                  color: Colors.grey[600],
                ),
              ),
            ),
            const SizedBox(
              width: 20
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Payment Method",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Text(
                  paymentMethod,
                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                Text(
                  cardNumber,
                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                Text(
                  expiryDate,
                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
        ElevatedButton(
          onPressed: () {
            _openPaymentDialog();
          },
          child: const Text("Edit"),
        )
      ],
    );
  }

  void _openPaymentDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Change Payment Details'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: const InputDecoration(labelText: 'Payment Method'),
                onChanged: (value) {
                  setState(() {
                    paymentMethod = value;
                  });
                },
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Card Number'),
                onChanged: (value) {
                  setState(() {
                    cardNumber = value;
                  });
                },
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Expiry Date'),
                onChanged: (value) {
                  setState(() {
                    expiryDate = value;
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
}
