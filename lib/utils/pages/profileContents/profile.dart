import 'dart:io';

import 'package:flutter/material.dart';
import 'package:home_services/commonFIles/navComponents/navigationBar.dart';
import 'package:home_services/constants/text_strings.dart';
import 'package:home_services/utils/pages/servicesContent/serviceProducts/servicesOptions/addTocartList.dart';
import 'package:image_picker/image_picker.dart';

class TProfile extends StatefulWidget {
  const TProfile({Key? key}) : super(key: key);

  @override
  State<TProfile> createState() => _TProfileState();
}

class _TProfileState extends State<TProfile> {
  File? _image;
  String _username = 'Pratham Patel'; // Initial username
  String _firstName = 'Patel'; // Initial first name
  String _lastName = 'Pratham'; // Initial last name
  String _email = "patelpratham429@gmail.com"; // Initial email
  String _phoneNumber = '982-589-9246'; // Initial phone number
  String _address = "A-14 giriraj complex, surat, gujarat"; // Initial address
  final bookings = cartList; // List of bookings

  Future<void> _getImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  void _changeDisplayName() {
    showDialog(
      context: context,
      builder: (context) {
        String newDisplayName =
            '$_firstName $_lastName'; // Initialize with current display name
        return AlertDialog(
          title: Text('Change Display Name'),
          content: TextField(
            onChanged: (value) {
              newDisplayName = value;
            },
            decoration: InputDecoration(hintText: 'Enter new display name'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  _firstName = newDisplayName.split(' ')[0];
                  _lastName = newDisplayName.split(' ')[1];
                });
                Navigator.of(context).pop();
              },
              child: Text('Save'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  void _editInfo() {
    String newFirstName = _firstName;
    String newLastName = _lastName;
    String newEmail = _email;
    String newPhoneNumber = _phoneNumber;
    String newAddress = _address;

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit Personal Information'),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  onChanged: (value) {
                    newFirstName = value;
                  },
                  decoration: InputDecoration(labelText: 'First Name'),
                ),
                TextField(
                  onChanged: (value) {
                    newLastName = value;
                  },
                  decoration: InputDecoration(labelText: 'Last Name'),
                ),
                TextField(
                  onChanged: (value) {
                    newEmail = value;
                  },
                  decoration: InputDecoration(labelText: 'Email'),
                ),
                TextField(
                  onChanged: (value) {
                    newPhoneNumber = value;
                  },
                  decoration: InputDecoration(labelText: 'Phone Number'),
                ),
                TextField(
                  onChanged: (value) {
                    newAddress = value;
                  },
                  decoration: InputDecoration(labelText: 'Address'),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  _firstName = newFirstName;
                  _lastName = newLastName;
                  _email = newEmail;
                  _phoneNumber = newPhoneNumber;
                  _address = newAddress;
                });
                Navigator.of(context).pop();
              },
              child: Text('Save'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar:  PreferredSize(
          preferredSize: Size(screenSize.width, 75),
          child: const TNavigationBar()),
      backgroundColor: Color.fromARGB(255, 223, 228, 233)!,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              IntrinsicHeight(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 150),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        userPhotoAndNameSection(),
                        SizedBox(height: 20),
                        Divider(),
                        SizedBox(height: 20),
                        personInfoSection(),
                        SizedBox(height: 20),
                        Divider(),
                        SizedBox(height: 20),
                        bookingSection(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

Widget bookingSection() {
  return bookings.isEmpty
      ? Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Booking Section',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[300]!, width: 1.7),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    'No Bookings',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        )
      : Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Booking Section',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: IntrinsicHeight(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[300]!, width: 1.7),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: List.generate(bookings.length, (index) {
                      // Calculate total cost for the booking item
                      int totalCost = bookings[index].price * bookings[index].quantity;
                      return Padding(
                        padding: EdgeInsets.all(15),
                        child: IntrinsicHeight(
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.grey[200]!,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        bookings[index].name,
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        "${bookings[index].id}",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        "Price: ${bookings[index].price}, Quantity: ${bookings[index].quantity}",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "Booking Date: ${DateTime.now().toString()}",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Total ${TTextStrings.idianRupee}$totalCost",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      TextButton(
                                        onPressed: () {
                                          // Remove item from bookings list
                                          setState(() {
                                            bookings.removeAt(index);
                                          });
                                        },
                                        style: ButtonStyle(
                                          shape: MaterialStateProperty.all<OutlinedBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10.0),
                                              side: BorderSide(color: Colors.grey[700]!),
                                            ),
                                          ),
                                        ),
                                        child: Text("Cancel"),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ),
            ),
          ],
        );
}



  Column personInfoSection() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Personal Info',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: _editInfo,
              child: Text('Edit'),
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'First Name',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '$_firstName',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Last Name',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '$_lastName',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Email',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '$_email',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Phone Number',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '$_phoneNumber',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Address',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "$_address",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Row userPhotoAndNameSection() {
    return Row(
      children: [
        SizedBox(
          width: 100,
          height: 100,
          child: Stack(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: _image != null
                    ? FileImage(_image!)
                    : AssetImage('assets/placeholder.png') as ImageProvider,
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: _getImage,
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Display Name: $_firstName $_lastName',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(width: 10),
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: _changeDisplayName,
                ),
              ],
            ),
            Text(
              'Username: $_username',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'User ID: 123456',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ],
    );
  }
}
