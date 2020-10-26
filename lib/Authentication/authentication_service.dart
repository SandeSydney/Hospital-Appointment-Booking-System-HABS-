import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationService {
  final FirebaseAuth _firebaseAuth;

  // constructor to get the firebase auth
  AuthenticationService(this._firebaseAuth);

  // get the firebase state changers
  Stream<User> get authStateChanges => _firebaseAuth.authStateChanges();

  // logging out of the application
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  // method to sign in
  Future<String> signIn({String email, String password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return "Signed In";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  // method to sign up
  Future<String> signUp({String email, String password}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return "Signed Up";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }
}
