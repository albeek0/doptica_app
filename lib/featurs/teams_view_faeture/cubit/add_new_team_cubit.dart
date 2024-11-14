import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_new_team_state.dart';

class AddNewTeamCubit extends Cubit<AddNewTeamState> {
  AddNewTeamCubit() : super(AddNewTeamInitial());
}
