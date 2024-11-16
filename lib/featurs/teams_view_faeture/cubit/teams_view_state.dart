part of 'teams_view_cubit.dart';

@immutable
sealed class TeamsViewState {}

final class TeamsViewInitial extends TeamsViewState {}

final class TeamsViewLoading extends TeamsViewState {}

final class TeamsViewFailuer extends TeamsViewState {
  final String error;

  TeamsViewFailuer({required this.error});

  String? get errorMessage => null;
}

final class TeamsViewSuccess extends TeamsViewState {
  final List<Map<String, dynamic>> groups;

  TeamsViewSuccess({required this.groups});
}
