class Validator {
  bool validateEmail(String email) {
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  }

  String getEmailErrorMessage(String email) {
    if (email.isEmpty) return 'Email is required';
    if (!validateEmail(email)) return 'Invalid email address';
    return '';
  }

  bool validatePassword(String password) {
    // Password validation criteria
    if (password.isEmpty) return false;
    if (password.length < 8 || password.length > 16) return false;
    bool hasUppercase = password.contains(RegExp(r'[A-Z]'));
    bool hasNumber = password.contains(RegExp(r'[0-9]'));
    bool hasSpecialChar = password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
    return hasUppercase && hasNumber && hasSpecialChar;
  }

  String getPasswordErrorMessage(String password) {
    if (password.isEmpty) return 'Password is required';
    if (password.length > 16) return 'Password length should be under 16 characters';
    
    List<String> errorMessages = [];
    if ((password.length < 8 || password.length > 16)) errorMessages.add('Password length 8-16');
    if (!password.contains(RegExp(r'[A-Z]'))) errorMessages.add('Add at least one uppercase letter');
    if (!password.contains(RegExp(r'[0-9]'))) errorMessages.add('Add at least one number');
    if (!password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) errorMessages.add('Add at least one special character');
    
    return errorMessages.join(', ');
  }
}