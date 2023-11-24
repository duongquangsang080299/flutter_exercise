import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepo {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> signIn({required String email, required String password}) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      throw Exception('Failed to sign in: $e');
    }
  }

  Future<void> signUp(
      {required String email,
      required String password,
      required String username}) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      // Store user information in Shared Preferences
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('username', username);
    } catch (e) {
      throw Exception('Failed to sign up: $e');
    }
  }

  Future<void> resetPassword({required String email}) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
    } catch (e) {
      throw Exception('Failed to reset password: $e');
    }
  }

  Future<void> signOut() async {
    try {
      await _auth.signOut();
      SharedPreferences prefs = await SharedPreferences.getInstance();

      /// Clear cache of SharePreferences
      prefs.clear();
      print("User signed out successfully");
    } catch (e) {
      print("Error signing out: $e");
    }
  }
}
