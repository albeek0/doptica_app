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

      final groupIds = response.map((item) => item['group_id']).toList();

      // Fetch group details
      final groupsResponse = await Supabase.instance.client
          .from('groups')
          .select('*')
          .inFilter('id', groupIds);

      emit(TeamsViewSuccess(groups: groupsResponse));
    } catch (error) {
      emit(TeamsViewFailuer(error: error.toString()));
    }
  }
}


// class TeamsViewCubit extends Cubit<TeamsViewState> {
//   TeamsViewCubit() : super(TeamsViewInitial());
//   Future<List<Map<String, dynamic>>> fetchGroups() async {
//     try {
//       emit(TeamsViewLoading());
//       final userId = FirebaseAuth.instance.currentUser!.uid;
//       // Fetch group IDs for the given user
//       final response = await Supabase.instance.client
//           .from('group_members')
//           .select('group_id')
//           .eq('user_id', userId);

//       if (response.isEmpty) { emit(TeamsViewFailuer());
//         throw Exception("No groups found for the given user ID.");
       
//       }

//       final groupIds = response.map((item) => item['group_id']).toList();

//       // Fetch details of the groups
//       final groupsResponse = await Supabase.instance.client
//           .from('groups')
//           .select('*')
//           .inFilter('id', groupIds);

//       if (groupsResponse.isEmpty) { emit(TeamsViewFailuer());
//         throw Exception(
//             "No details found for the groups associated with this user.");
//       }
//  emit(TeamsViewSuccess());
//       return groupsResponse;
      
//     } on PostgrestException catch (error) {
//        emit(TeamsViewFailuer());
//       // Handle PostgREST-specific errors
//       print('PostgREST error: ${error.message}');
//       throw Exception('Database error occurred: ${error.message}');
//     }
//   }
// }
