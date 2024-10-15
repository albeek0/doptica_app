import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'email_verification_cubit_state.dart';

class EmailVerificationCubitCubit extends Cubit<EmailVerificationCubitState> {
  EmailVerificationCubitCubit() : super(EmailVerificationCubitInitial());
  sendemail()  {
    final User? user = FirebaseAuth.instance.currentUser;
      user?.sendEmailVerification();
    print("sent!!!!!!!!!!!!!!!!!");
  }

  Future<void> emailcheck() async {
    User? user = FirebaseAuth.instance.currentUser!;
    emit(EmailVerificationLoading());
    await user.reload();
    if (user.emailVerified ) {
      emit(EmailVerificationSucces());
    } else {
      emit(EmailVerificationFailed());
    }
  }
}
