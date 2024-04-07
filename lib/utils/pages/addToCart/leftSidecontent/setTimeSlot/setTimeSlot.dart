import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SetDateAndTime extends StatefulWidget {
  SetDateAndTime({Key? key}) : super(key: key);

  @override
  State<SetDateAndTime> createState() => _SetDateAndTimeState();
}

class _SetDateAndTimeState extends State<SetDateAndTime> {
  DateTime? selectedDateTime;

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
                  Icons.calendar_today,
                  color: Colors.grey[600],
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Date and Time",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                selectedDateTime != null
                    ? Text(
                        '${DateFormat('EEEE, MMMM d, yyyy - hh:mm a').format(selectedDateTime!)}',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    : Text(
                        'Select Date and Time',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
              ],
            ),
          ],
        ),
        ElevatedButton(
          onPressed: () {
            _openDateTimePicker();
          },
          child: Text("Select"),
        )
      ],
    );
  }

  Future<void> _openDateTimePicker() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );

    if (picked != null) {
      final TimeOfDay? pickedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
      );

      if (pickedTime != null) {
        setState(() {
          selectedDateTime = DateTime(
            picked.year,
            picked.month,
            picked.day,
            pickedTime.hour,
            pickedTime.minute,
          );
        });
      }
    }
  }
}
