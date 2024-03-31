import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:home_services/anim/temp.dart';


class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Password Validator Example'),
        ),
        body: PasswordForm(),
      ),
    );
  }
}

class PasswordForm extends StatefulWidget {
  @override
  _PasswordFormState createState() => _PasswordFormState();
}

class _PasswordFormState extends State<PasswordForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();

  final passwordValidator = MultiValidator([
    RequiredValidator(errorText: "Password is required"),
    LengthRangeValidator(min: 8, max: 16, errorText: "Length must be between 8 and 16"),
    PatternValidator(r'[A-Z]', errorText: 'Add at least one uppercase letter'),
    PatternValidator(r'[0-9]', errorText: 'Add at least one digit'),
    PatternValidator(r'[!@#$%^&*(),.?":{}|<>]', errorText: 'Add at least one special character'),
  ]);


  String message = "";
  String message123 = "";
  String password = "";  

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
              validator: passwordValidator,
               onChanged: (val) =>  password = val,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (_formKey.currentState!.validate()) {
                  // If the form is valid, perform further actions
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Password is valid'),
                    ),
                  );
                } else {

                  message = passwordValidator.errorText.toString();
                  // MultiValidator mass = passwordValidator.validators

                  // If the form is invalid, retrieve all errors and display them
                  // List<String> errors = passwordValidator.errorText ?? [];
                  // String errorMessage = errors.isNotEmpty ? errors.join('\n') : 'Invalid password';
                  // ScaffoldMessenger.of(context).showSnackBar(
                  //   SnackBar(
                  //     content: Text(errorMessage),
                  //   ),
                  // );
                }
                });
              },
              child: Text("dfdsf"),
            ),
          ],
        ),
      ),
    );
  }
}
