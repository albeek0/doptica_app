import 'package:firebase_auth/firebase_auth.dart';

class FireBaseAuth {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signupwithemailandpassword(
      String email, String password) async {
    try {
      UserCredential credential =  await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } catch (e) {
      print("something went wrong============================wrong ");
    }
    return null;
  }

Future<User?> signinwithemailandpassword(
      String email, String password) async {
    try {
      UserCredential credential =  await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } catch (e) {
      print("something went wrong============================wrong ");
    }
    return null;
  }





}
