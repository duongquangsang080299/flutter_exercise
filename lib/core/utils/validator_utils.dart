extension Validator on String {
  String? isValidPassword() {
    final regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    final passNonNullValue = this;
    if (passNonNullValue.isEmpty) {
      return 'Password is required';
    } else if (passNonNullValue.length < 6) {
      return 'Password should be atleast 5 characters';
    } else if (!regex.hasMatch(passNonNullValue)) {
      return 'Password requires uppercase, lowercase, digit, and special character.';
    }
    return null;
  }

  String? isValidEmail() {
    final passNonNullValue = this;
    if (passNonNullValue.isEmpty) {
      return 'Email is required';
    } else if (passNonNullValue.length < 6) {
      return 'Email should be atleast 5 characters';
    } else if (!passNonNullValue.contains('@')) {
      return 'Email should contains @';
    }
    return null;
  }

  String? isValidUserName() {
    final passNonNullValue = this;
    if (passNonNullValue.isEmpty) {
      return 'Username is required';
    } else if (passNonNullValue.length < 6) {
      return 'Username should be atleast 5 characters';
    }
    return null;
  }
}
