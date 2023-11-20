mixin InputValidationMixin {
  static String? validEmail(String email) {
    if (email.isEmpty) {
      return 'Email is required';
    } else if (email.length < 6) {
      return 'Email 5-character minimum';
    } else if (!email.contains('@')) {
      return 'Email should contain @';
    }
    return null;
  }

  static String? validUserName(String username) {
    if (username.isEmpty) {
      return 'Username is required';
    } else if (username.length < 6) {
      return 'Username is required';
    }
    return null;
  }

  static String? validPassword(String password) {
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
}
