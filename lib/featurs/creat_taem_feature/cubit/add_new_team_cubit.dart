import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    print("user id here >>>>>>>>>>>>>>>>>>>>>>>>>>>>" + user.uid);
    emit(CreatNewTeeamLoading());

    try {
      // Insert into `groups` table
      final response = await Supabase.instance.client.from('groups').insert({
        'name': groupName,
        'Description': groupDescription,
        'admin_id': adminId,
      }); // Ensures that the inserted row data is returned
      // final groupId = response.data[0]['id'];
      // print(groupId);
      final uuid = await Supabase.instance.client
          .from('groups')
          .select('id')
          .eq('name', groupName)
          .single();
      print(uuid);
      final groupId = uuid['id'];
      // Access the first row's id

      print("Group ID: $groupId");

      await Supabase.instance.client.from('groups_members').insert({
        'group_id': groupId,
        'user_id': adminId,
        'role': 'admin',
      });
      print(response);
      // Insert admin into `group_members`
      emit(SuccesfulTeamAdd(response));

      // Handle successful admin insertion
    } on PostgrestException catch (error) {
      emit(FailedTeamAdd(error.message));
    }
  }
}
// i am in here recevid a null 