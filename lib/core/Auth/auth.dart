import 'package:firebase_auth/firebase_auth.dart';

class FireBaseAuth {
  late FirebaseAuth _auth;

  Future signin(String email, String password) async {
    FireBaseAuth()
        ._auth
        .signInWithEmailAndPassword(email: email, password: password);
  }

  Future signup(String email, String password) async {
    FireBaseAuth()
        ._auth
        .createUserWithEmailAndPassword(email: email, password: password);
  }
}
