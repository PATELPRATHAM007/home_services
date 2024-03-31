import 'package:form_field_validator/form_field_validator.dart';

class TValidator {

  

  final passwordValidator = MultiValidator([
    RequiredValidator(errorText: "Password is required"),
    LengthRangeValidator(min: 6, max: 19, errorText: "Lenght 8 - 16"),
    PatternValidator(r'[A-Z]', errorText: 'Add at least one uppercase letter'),
    PatternValidator(r'[0-9]', errorText: 'Add at least one uppercase letter'),
    PatternValidator(r'[!@#$%^&*(),.?":{}|<>]', errorText: 'Add at least one uppercase letter'),
  ]);



}

