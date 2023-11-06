import 'package:firebase_auth/firebase_auth.dart';

class SignInRepo {
  final FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> signIn({required String email, required String password}) async {
    await auth.signInWithEmailAndPassword(email: email, password: password);
  }
}
