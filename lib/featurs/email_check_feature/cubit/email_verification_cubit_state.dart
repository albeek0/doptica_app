part of 'email_verification_cubit.dart';

@immutable
sealed class EmailVerificationCubitState {}

final class EmailVerificationCubitInitial extends EmailVerificationCubitState {}
final class EmailVerificationSucces  extends EmailVerificationCubitState {}
final class EmailVerificationLoading  extends EmailVerificationCubitState {}
final class EmailVerificationFailed extends EmailVerificationCubitState {}