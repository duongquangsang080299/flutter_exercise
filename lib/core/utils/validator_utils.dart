mixin InputValidationMixin {
  static String? validEmail(String email) {
    if (email.isEmpty) {
      return 'Email is required';
    } else if (email.length < 6) {
      return 'Email should be at least 6 characters long';
    } else if (!email.contains('@')) {
      return 'Email should contain @';
    }
    return null;
  }

  static String? validUserName(String username) {
    if (username.isEmpty) {
      return 'Username is required';
    } else if (username.length < 6) {
      return 'Username should be at least 6 characters long';
    }
    return null;
  }

  static String? validPassword(String password) {
    final regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (password.isEmpty) {
      return 'Password is required';
    } else if (password.length < 6) {
      return 'Password should be at least 6 characters long';
    } else if (!regex.hasMatch(password)) {
      return 'Password should have at least one uppercase letter, one lowercase letter, one digit, and one special character.';
    }
    return null;
  }
}
