import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> loginWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(email: email, password: password);   
      return credential.user;
    } catch (e) {
      print("Error: $e");
      return null; // Return null to indicate failure
    }
  }

  Future<User?> signUpWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(email: email, password: password);   
      return credential.user;
    } catch (e) {
      print("Error: $e");
      return null; // Return null to indicate failure
    }
  }
  Future<User?> loginWithPhoneNumber(String email, String password) async {
    try {
      UserCredential credential = await _auth.verifyPhoneNumber();   
      return credential.user;
    } catch (e) {
      print("Error: $e");
      return null; // Return null to indicate failure
    }
  }
}
