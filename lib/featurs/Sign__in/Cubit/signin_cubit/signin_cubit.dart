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
      emit(SigninSucces());
    } on FirebaseAuthException catch (ex) {
      if (ex.code == 'user-not-found') {
        emit(SigninFailure(errmessege: 'the user is not found '));
      } else if (ex.code == 'wrong-password') {
        emit(SigninFailure(errmessege: 'wrong passord pleas  try again '));
      } else {
        emit(SigninFailure(errmessege: 'somthing went wrong'));
      }
     
    }
     catch (e) {
      emit(
          SigninFailure(errmessege: 'Something went wrong. Please try again.'));
    }
  }
}
