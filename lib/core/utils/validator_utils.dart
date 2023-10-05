mixin InputValidationMixin {
  String? isPasswordValid(String password) {
    final regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (password.isEmpty) {
      return 'Password is required';
    } else if (password.length < 6) {
      return 'Password 5-character minimum';
    } else if (!regex.hasMatch(password)) {
      return 'Password least uppercase, digit, and special character.';
    }
    return null;
  }

  String? isValidEmail(String email) {
    final passNonNullValue = email;
    if (passNonNullValue.isEmpty) {
      return 'Email is required';
    } else if (passNonNullValue.length < 6) {
      return 'Email 5-character minimum';
    } else if (!passNonNullValue.contains('@')) {
      return 'Email should contain @';
    }
    return null;
  }

  String? isValidUserName(String username) {
    final passNonNullValue = username;
    if (passNonNullValue.isEmpty) {
      return 'Username is required';
    } else if (passNonNullValue.length < 6) {
      return 'Username 5-character minimum';
    }
    return null;
  }
}
