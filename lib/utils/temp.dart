import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UserProfileView extends StatefulWidget {
  const UserProfileView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _UserProfileViewState createState() => _UserProfileViewState();
}

class _UserProfileViewState extends State<UserProfileView> {
  TextEditingController userIdController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController dobController = TextEditingController();

  File? _image;

  Future getImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        if (kDebugMode) {
          print('No image selected.');
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('View Profile'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            width: 600,
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        getImage();
                      },
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage:
                            _image != null ? FileImage(_image!) : null,
                        child: _image == null
                            ? const Icon(
                                Icons.camera_alt,
                                size: 50,
                              )
                            : null,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'User ID:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextField(
                    controller: userIdController,
                    decoration: InputDecoration(
                      hintText: 'Enter your User ID',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Name:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      hintText: 'Enter your name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Email:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Phone Number:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextField(
                    controller: phoneNumberController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: 'Enter your phone number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Address:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextField(
                    controller: addressController,
                    maxLines: 2,
                    decoration: InputDecoration(
                      hintText: 'Enter your address',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Date of Birth:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextField(
                    controller: dobController,
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                      hintText: 'Enter your date of birth (DD/MM/YYYY)',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    // Center the button
                    child: ElevatedButton(
                      onPressed: () {
                        saveProfile();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      child: const Text('Save Profile'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void saveProfile() {
    String userId = userIdController.text;
    String name = nameController.text;
    String email = emailController.text;
    String phoneNumber = phoneNumberController.text;
    String address = addressController.text;
    String dob = dobController.text;

    if (kDebugMode) {
      print('User ID: $userId');
      print('Name: $name');
      print('Email: $email');
      print('Phone Number: $phoneNumber');
      print('Address: $address');
      print('Date of Birth: $dob');
    }
  }
}

void main() {
  runApp(const MaterialApp(
    home: UserProfileView(),
  ));
}