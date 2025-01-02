part of 'add_new_team_cubit.dart';

@immutable
sealed class AddNewTeamState {}

final class AddNewTeamInitial extends AddNewTeamState {}

final class CreatNewTeeamLoading extends AddNewTeamState {}

final class SuccesfulTeamAdd extends AddNewTeamState {
  final  group;
  SuccesfulTeamAdd(this.group);
}

final class FailedTeamAdd extends AddNewTeamState {
  final String error;
  FailedTeamAdd( this.error);
}
class AddNewTeamImagePicked extends AddNewTeamState {
  final XFile? imageFile;

  AddNewTeamImagePicked(this.imageFile);
}

