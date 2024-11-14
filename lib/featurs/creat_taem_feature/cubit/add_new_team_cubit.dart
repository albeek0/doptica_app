import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
part 'add_new_team_state.dart';

class AddNewTeamCubit extends Cubit<AddNewTeamState> {
  AddNewTeamCubit() : super(AddNewTeamInitial());
  final SupabaseClient supabase = Supabase.instance.client;
  Future<void> addnnewteam(String name, String description) async {
    try {
      final res = await supabase.from('groups').insert({
        'name': name,
        'description': description,
      }).select();

     

      final groupId = res[0]['id'];
      final userId = FirebaseAuth.instance.currentUser!.uid;

      await supabase.from('group_members').insert({
        'user_id': userId,
        'group_id': groupId,
        'role': 'admin',
      });
    } catch (error) {
      print('Error creating group: $error');
    }
  }
}
