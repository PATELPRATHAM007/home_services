import 'package:flutter/material.dart';

class CancellationPart extends StatefulWidget {
  const CancellationPart({super.key});

  @override
  
  State<CancellationPart> createState() => _CancellationPartState();
}

class _CancellationPartState extends State<CancellationPart> {
  void showCancellationDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Cancellation & Reschedule Policy'),
          content: Container(
            width: 400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Time",
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      "Fees",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "More than 3 hrs before the service",
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      "free",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Within 3 hrs of the service",
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      "Up to ₹50",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                Divider(),
                Text(
                  "This fee goes to the professional",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "Their time is reserved for the service & they cannot get another job for the reserved time",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20), // Add some space before the button
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Add your onPressed logic here
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 1,
                    backgroundColor: Colors.blue ,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    "okey",
                    style: TextStyle(fontSize: 16,color: Colors.white),
                  ),
                ),
              ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Cancellation & reschedule policy"),
        SizedBox(
          height: 10,
        ),
        Text(
            "Free cancellations/reschedules if done more than 3 hrs before the service or if a professional isn’t assigned. A fee will be charged otherwise."),
        SizedBox(
          height: 10,
        ),
        TextButton(
          onPressed: () => showCancellationDialog(),
          child: Text("learn more"),
        )
      ],
    );
  }
}
