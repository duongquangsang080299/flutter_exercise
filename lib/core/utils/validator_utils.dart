extension Validator on String {
  String? isValidPassword() {
    final regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    final passNonNullValue = this;
    if (passNonNullValue.isEmpty) {
      return 'Password is required';
    } else if (passNonNullValue.length < 6) {
      return 'Password 5-character minimum';
    } else if (!regex.hasMatch(passNonNullValue)) {
      return 'Password least uppercase, digit, and special character.';
    }
    return null;
  }

  String? isValidEmail() {
    final passNonNullValue = this;
    if (passNonNullValue.isEmpty) {
      return 'Email is required';
    } else if (passNonNullValue.length < 6) {
      return 'Email 5-character minimum';
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
      return 'Username 5-character minimum';
    }
    return null;
  }
}
