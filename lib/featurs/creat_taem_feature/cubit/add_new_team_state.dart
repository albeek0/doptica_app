part of 'add_new_team_cubit.dart';

@immutable
sealed class AddNewTeamState {}

final class AddNewTeamInitial extends AddNewTeamState {}
final class CreatNewTeeamLoading extends AddNewTeamState {}
final class SuccesfulTeamAdd extends AddNewTeamState {}
final class failedTeamAdd extends AddNewTeamState {}


