// ignore_for_file: unused_local_variable, unused_catch_clause

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit() : super(SigninInitial());

  Future<void> signin({required String email, required String password}) async {
    emit(SigninLoading());
    try {
      UserCredential user = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      User userstate = FirebaseAuth.instance.currentUser!;
      await userstate.reload();
      var userbool = userstate.emailVerified;
      if (userbool == true) {
        emit(SigninSucces());
      } else {
        emit(SigninVerifi());
      }
    } on FirebaseAuthException catch (ex) {
      if (ex.code == 'invalid-credential') {
        emit(SigninFailure(
            errmessege: 'the user is not found or check your password '));
      } else if (ex.code == 'wrong-password') {
        emit(SigninFailure(errmessege: 'wrong passord pleas  try again '));
      } else {
        emit(SigninFailure(errmessege: ex.code));
      }
      
    }
  }

  Future signinwithgoogle() async {
    emit(SigninLoading());
    try {
      UserCredential user =
          await FirebaseAuth.instance.signInWithProvider(GoogleAuthProvider());
      emit(SigninSucces());
    } catch (e) {
      emit(SigninFailure(errmessege: e.toString()));
    }
  }
}
