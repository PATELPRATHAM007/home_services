import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/rendering.dart";
import "package:flutter/widgets.dart";
import "package:home_services/commonFIles/logoComponents/logo.dart";
import "package:home_services/commonFIles/textFormField/textfromfiled.dart";
import "package:home_services/constants/size_values.dart";
import "package:home_services/utils/localData/listOfField&Identifier.dart";
import 'package:intl/intl.dart';

class TRegistrationFrom extends StatefulWidget {
  const TRegistrationFrom({super.key});

  @override
  State<TRegistrationFrom> createState() => _TRegistrationFromState();
}

class _TRegistrationFromState extends State<TRegistrationFrom> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _address = TextEditingController();
  TextEditingController _phoneNumber = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _aadharNumber = TextEditingController();

  String selectedGender = '';
  bool isGenderSelected = false;
  bool showError = false;

  bool isNumeric(String s) {
    if (s == null) {
      return false;
    }
    return double.tryParse(s) != null;
  }

  DateTime? selectedDate;
  TextEditingController _dateController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        _dateController.text = DateFormat('dd/MM/yyyy').format(selectedDate!);
      });
    }
  }

  bool isValidDateFormat(String input) {
    final RegExp regExp = RegExp(r'^\d{2}/\d{2}/\d{4}$');
    if (!regExp.hasMatch(input)) return false;
    try {
      DateFormat('dd/MM/yyyy').parse(input);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 340, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CLogoSection(
                    logoWidth: TSizeValues.logoWidth,
                    logoHeight: TSizeValues.logoWidth,
                    gap: TSizeValues.logoGap),
                IntrinsicHeight(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5,
                              color: Colors.grey[350]!,
                              offset: Offset(0, 0))
                        ]),
                    child: Padding(
                      padding: EdgeInsets.all(30),
                      child: SizedBox(
                        width: double.infinity,
                        child: Form(
                          key: _formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "name".toUpperCase(),
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: List.generate(
                                  3,
                                  (index) {
                                    return Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 5),
                                      child: SizedBox(
                                        width: 200,
                                        child: CTextFromField(
                                          hint: fieldInfo[index].hint,
                                          label: fieldInfo[index].label,
                                          controller:
                                              fieldInfo[index].controller,
                                          valid: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return '${fieldInfo[index].label} is required';
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Text(
                                "address".toUpperCase(),
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              CTextFromField(
                                hint: "Enter your address....",
                                label: "Address",
                                controller: _address,
                                valid: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Addess is required';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: List.generate(
                                  3,
                                  (index) {
                                    return Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 5),
                                      child: SizedBox(
                                        width: 200,
                                        child: CTextFromField(
                                          hint: CityStateNation[index].hint,
                                          label: CityStateNation[index].label,
                                          controller:
                                              CityStateNation[index].controller,
                                          valid: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return '${CityStateNation[index].label} is required';
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "phone number".toUpperCase(),
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                            fontSize: 16,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 0),
                                          child: CTextFromField(
                                            hint: "Enter your phone number...",
                                            label: "Phone Number",
                                            maxlen: 10,
                                            controller: _phoneNumber,
                                            valid: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Phone number is required';
                                              }
                                              if (value.length != 10) {
                                                return 'Phone number must be 10 digits';
                                              }
                                              if (!isNumeric(value)) {
                                                return 'Phone number must contain only numbers';
                                              }
                                              return null;
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                      width: 16), // Add spacing between fields
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "email".toUpperCase(),
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                            fontSize: 16,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        CTextFromField(
                                          hint: "Enter your email address...",
                                          label: "Email",
                                          controller: _email,
                                          valid: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'Email is required';
                                            }
                                            // Email pattern validation
                                            final emailRegex = RegExp(
                                                r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
                                            if (!emailRegex.hasMatch(value)) {
                                              return 'Enter a valid email address';
                                            }
                                            return null;
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Aadhar Card Number".toUpperCase(),
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  CTextFromField(
                                    hint: "Enter your Aadhar card number...",
                                    label: "Aadhar Card Number",
                                    controller: _aadharNumber,
                                    maxlen: 12,
                                    valid: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Aadhar card number is required';
                                      }
                                      if (value.length != 12) {
                                        return 'Aadhar card number must be 12 digits';
                                      }
                                      if (!isNumeric(value)) {
                                        return 'Aadhar card number must contain only numbers';
                                      }
                                      return null;
                                    },
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "gender".toUpperCase(),
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                            fontSize: 16,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          children: [
                                            Row(
                                              children: <Widget>[
                                                Radio<String>(
                                                  value: 'male',
                                                  groupValue: selectedGender,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      selectedGender = value!;
                                                      isGenderSelected = true;
                                                      showError = false;
                                                    });
                                                  },
                                                ),
                                                Text('Male'),
                                              ],
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Radio<String>(
                                                  value: 'female',
                                                  groupValue: selectedGender,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      selectedGender = value!;
                                                      isGenderSelected = true;
                                                      showError = false;
                                                    });
                                                  },
                                                ),
                                                Text('Female'),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "date of birth".toUpperCase(),
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                          fontSize: 16,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 170,
                                        child: CTextFromField(
                                          hint: "DD/MM/YYYY",
                                          label: "Date of Birth",
                                          controller: _dateController,
                                          valid: (value) {
                                            if (value!.isEmpty) {
                                              return 'Please enter your date of birth';
                                            }
                                            if (!isValidDateFormat(value)) {
                                              return 'Please enter a valid date in dd/mm/yyyy format';
                                            }
                                            return null;
                                          },
                                        ),
                                      )
                                    ],
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: SizedBox(),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8),
                              if (showError)
                                Text(
                                  'Please select a gender',
                                  style: TextStyle(color: Colors.red),
                                ),
                              SizedBox(height: 160),
                              ElevatedButton(
                                onPressed: () {
                                  _formKey.currentState!.validate();
                                  if (!isGenderSelected) {
                                    setState(() {
                                      showError = true;
                                    });
                                    return;
                                  }
                                },
                                child: Text("submit"),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
