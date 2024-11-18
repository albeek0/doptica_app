import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
part 'add_new_team_state.dart';

class AddNewTeamCubit extends Cubit<AddNewTeamState> {
  AddNewTeamCubit() : super(AddNewTeamInitial());

  Future<void> addGroup(String groupName, String groupDescription) async {
    print("here###@@@@@@@#####");
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      print("in user");
      emit(FailedTeamAdd('User is not authenticated.'));
      return;
    }
    final adminId = user.uid;

    emit(CreatNewTeeamLoading());

    try {
      // Insert into `groups` table
      final response = await Supabase.instance.client.from('groups').insert({
        'name': groupName,
        'Description': groupDescription,
        'admin_id': adminId,
      }); 
      print("here########");
      // Ensure `response` has data
      if (response['id'] != null) {
        final groupId = response['id'];
        print("is here @@@@@@@@@@@@@@@@@@");
        // Insert admin into `group_members`
        final memberResponse =
            await Supabase.instance.client.from('group_members').insert({
          'group_id': groupId,
          'user_id': adminId,
          'role': 'admin',
        });

        // Handle successful admin insertion
        if (memberResponse != null) {
          emit(SuccesfulTeamAdd(response));
          print("done");
        } else {
          emit(FailedTeamAdd('Failed to add admin to the group.'));
          print("failed3");
        }
      }
    } on PostgrestException catch (error) {
      emit(FailedTeamAdd(error.message));
    }
  }
}
// i am in here recevid a null 