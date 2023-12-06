import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:soccer_club_app/core/error/error_exception.dart';

class AuthRepo {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> signIn({required String email, required String password}) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      throw Exception('Failed to sign in: $e');
    }
  }

  Future<String?> getUserName() async {
    try {
      User? user = _auth.currentUser;
      if (user != null) {
        return user.displayName;
      }
    } catch (e) {
      throw AppException(AppExceptionType.badResponse);
    }
    return null;
  }

  Future<void> signUp({
    required String email,
    required String password,
    required String username,
  }) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      User? user = _auth.currentUser;
      await user?.updateDisplayName(username);

      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('username', username);
    } catch (e) {
      throw AppException(AppExceptionType.badResponse);
    }
  }

  Future<void> resetPassword({required String email}) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
    } catch (e) {
      throw AppException(AppExceptionType.badResponse);
    }
  }

  Future<void> signOut() async {
    try {
      await _auth.signOut();
      SharedPreferences prefs = await SharedPreferences.getInstance();

      /// Clear cache of SharePreferences
      prefs.clear();
    } catch (e) {
      throw AppException(AppExceptionType.badResponse);
    }
  }
}
