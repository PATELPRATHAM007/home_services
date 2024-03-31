import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/rendering.dart";
import "package:flutter/widgets.dart";
import "package:home_services/commonFIles/logoComponents/logo.dart";
import "package:home_services/commonFIles/textFormField/textfromfiled.dart";
import "package:home_services/constants/size_values.dart";
import "package:home_services/utils/localData/listOfField&Identifier.dart";
import 'package:uuid/uuid.dart';

class TRegistrationFrom extends StatefulWidget {
  const TRegistrationFrom({super.key});

  @override
  State<TRegistrationFrom> createState() => _TRegistrationFromState();
}

class _TRegistrationFromState extends State<TRegistrationFrom> {
  final _formKey = GlobalKey<FormState>();
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
                                  fontSize: 18,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                              return '${fieldInfo[index].hint} is required';
                                            }
                                            return null;
                                          },
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),

                              ElevatedButton(
                                onPressed: () {
                                  _formKey.currentState!.validate();
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
