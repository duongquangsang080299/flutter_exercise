import 'package:firebase_auth/firebase_auth.dart';

class SignUpRepo {
  final FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> signUp({required String email, required String password}) async {
    await auth.createUserWithEmailAndPassword(email: email, password: password);
  }
}
