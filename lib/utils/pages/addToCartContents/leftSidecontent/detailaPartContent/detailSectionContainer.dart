import 'package:flutter/material.dart';
import 'package:home_services/utils/pages/addToCartContents/leftSidecontent/paymentMethod/paymentMethod.dart';
import 'package:home_services/utils/pages/addToCartContents/leftSidecontent/setAddress/setAdreess.dart';
import 'package:home_services/utils/pages/addToCartContents/leftSidecontent/setEmail&phoneNo/setEmail&phoneNo.dart';
import 'package:home_services/utils/pages/addToCartContents/leftSidecontent/setTimeSlot/setTimeSlot.dart';

class DetailSectionContainer extends StatefulWidget {
  const DetailSectionContainer({super.key});

  @override
  State<DetailSectionContainer> createState() => _DetailSectionContainerState();
}

class _DetailSectionContainerState extends State<DetailSectionContainer> {
  String address = 'dsaduhduiahD';
  TextEditingController addressController =
      TextEditingController(); // String to store the address
  String selectedDate = ''; // Variable to store selected date
  String selectedTime = ''; // Variable to store selected time
  // Track the selected date index
  int selectedDateIndex = -1;
  // Track the selected time index
  int selectedTimeIndex = -1;
  void popUpbox() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String currentAddress = address;
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return AlertDialog(
              title: const Text('Dialog Title'),
              content: Container(
                width: 400,
                height: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      controller: addressController,
                      decoration: InputDecoration(
                        hintText: "Enter the new address",
                        labelText: 'Add new address',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Divider(
                      thickness: 2
                    ),
                    Row(
                      children: <Widget>[
                        Radio(
                          value: 'home',
                          groupValue: address,
                          onChanged: (value) {
                            // Update address string if 'home' radio button is selected
                            setState(() {
                              address = value.toString();
                            });
                          },
                        ),
                        const Text('Home'),
                      ],
                    ),
                    const SizedBox(
                      height: 5
                    ),
                    const SizedBox(
                      width: 300,
                      child: Text(
                        "data",
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ),
              ),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Close'),
                ),
              ],
            );
          },
        );
      },
    );
  }

  void showSetDateTimeSlotDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Set Date and Time Slot'),
          content: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('Select Date', style: TextStyle(fontSize: 18)),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                    3,
                    (index) => InkWell(
                      onTap: () {
                        setState(() {
                          selectedDateIndex = index;
                          selectedDate = (DateTime.now().day + index)
                              .toString(); // Example for selecting date
                        });
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: selectedDateIndex == index
                                  ? Colors.blue
                                  : Colors.grey),
                          color: selectedDateIndex == index
                              ? Colors.blue
                              : Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            (DateTime.now().day + index)
                                .toString(), // Example for selecting date
                            style: TextStyle(
                                color: selectedDateIndex == index
                                    ? Colors.white
                                    : Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text('Select Time', style: TextStyle(fontSize: 18)),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                    3,
                    (index) => InkWell(
                      onTap: () {
                        setState(() {
                          selectedTimeIndex = index;
                          selectedTime = '${8 + index}:00 AM'; // Example for selecting time
                        });
                      },
                      child: Container(
                        width: 80,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: selectedTimeIndex == index
                                  ? Colors.blue
                                  : Colors.grey),
                          color: selectedTimeIndex == index
                              ? Colors.blue
                              : Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            '${8 + index}:00 AM', // Example for selecting time
                            style: TextStyle(
                                color: selectedTimeIndex == index
                                    ? Colors.white
                                    : Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your onPressed logic here
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 1,
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'Confirm',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }


  Widget _buildTimeRow(String time) {
    return Row(
      children: [
        _buildTimeContainer(time),
        const SizedBox(width: 10),
        _buildTimeContainer(time),
        const SizedBox(width: 10),
        _buildTimeContainer(time),
      ],
    );
  }

  Widget _buildTimeContainer(String time) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(time),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey[300]!),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SetEmailAndPhoneNo(),
              const Divider(),
              SetAddress(),
              const Divider(),
              SetDateAndTime(),
              const Divider(),
              SetPaymentDetails(),
            ],
          ),
        ),
      ),
    );
  }


}
