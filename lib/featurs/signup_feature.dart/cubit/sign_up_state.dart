part of 'sign_up_cubit.dart';

@immutable
sealed class SignUpState {}

final class SignUpInitial extends SignUpState {}

final class SignUpLoading extends SignUpState {}

final class SignUpSucces extends SignUpState {}

final class SignUpfailed extends SignUpState {
    final String  errmessege;

  SignUpfailed({required this.errmessege});
}
