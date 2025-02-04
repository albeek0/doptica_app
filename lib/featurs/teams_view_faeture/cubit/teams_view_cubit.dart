import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
part 'teams_view_state.dart';

class TeamsViewCubit extends Cubit<TeamsViewState> {
  TeamsViewCubit() : super(TeamsViewInitial());

  Future<void> fetchGroups() async {
    emit(TeamsViewLoading());
    try {
      final userId = FirebaseAuth.instance.currentUser!.uid;

      // Fetch group IDs from group_members
      final response = await Supabase.instance.client
          .from('groups_members')
          .select('group_id')
          .eq('user_id', userId);

      if (response.isEmpty) {
        emit(TeamsViewFailuer(error: 'No groups found for the user.'));
        return;
      }

    
      // Fetch group details
      final groupsResponse = await Supabase.instance.client
          .from('groups')
          .select('*')
          .eq('admin_id', userId);

      emit(TeamsViewSuccess(groups: groupsResponse));
    } catch (error) {
      emit(TeamsViewFailuer(error: error.toString()));
    }
  }

  Future<void> deletegroube(String groubeid, String photour) async {
    emit(GroubeDeleteLoading());
    try {
      String bucketName = 'group_photos';
      final uri = Uri.parse(photour);
      final pathSegments = uri.pathSegments;
      final bucketPathIndex = pathSegments.indexOf(bucketName) + 1;
      final filePath = pathSegments.sublist(bucketPathIndex).join('/');
      print(filePath);
      await await Supabase.instance.client
          .from('groups_members')
          .delete()
          .eq('group_id', groubeid);

      await await Supabase.instance.client
          .from('groups')
          .delete()
          .eq('id', groubeid);

      await Supabase.instance.client.storage
          .from("group_photos")
          .remove([filePath]);

      emit(GroubeDeleteSuccess());
     fetchGroups();
    } catch (error) {
      String err = error.toString();
      emit(GroubeDeleteFailure(err));
    }
  }
}
