import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:image_picker/image_picker.dart';
part 'add_new_team_state.dart';

class AddNewTeamCubit extends Cubit<AddNewTeamState> {
  AddNewTeamCubit() : super(AddNewTeamInitial());

  Future<void> addGroup(
      String groupName, String groupDescription, XFile? image) async {
    
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
      final filePath =
          'group_photos/group_photos/${DateTime.now().millisecondsSinceEpoch}_${image?.name}';
      final fileBytes = await image?.readAsBytes();

      final response2 = await Supabase.instance.client.storage
          .from('group_photos')
          .uploadBinary(filePath, fileBytes!);
      print(response2);

      // Get the public URL for the uploaded file
      final publicUrl = Supabase.instance.client.storage
          .from('group_photos/group_photos')
          .getPublicUrl(filePath);

      // Insert into `groups` table

      final response = await Supabase.instance.client.from('groups').insert({
        'name': groupName,
        'Description': groupDescription,
        'admin_id': adminId,
        'photo_url': publicUrl
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

  Future<String?> uploadGroupPhoto(XFile? image) async {
    if (image == null) {
      final ImagePicker picker = ImagePicker();
      final XFile? image = await picker.pickImage(source: ImageSource.gallery);
      try {
        // Define the file path and upload to Supabase storage
        final filePath =
            'group_photos/group_photos/group_photos/${DateTime.now().millisecondsSinceEpoch}_${image?.name}';
        final fileBytes = await image?.readAsBytes();

        final response = await Supabase.instance.client.storage
            .from('group_photos')
            .uploadBinary(filePath, fileBytes!);
        print(response);

        // Get the public URL for the uploaded file
        final publicUrl = Supabase.instance.client.storage
            .from('group_photos/')
            .getPublicUrl(filePath);

        return publicUrl;
      } catch (e) {
        debugPrint('Error uploading image: $e');
        return null;
      }

      // User didn't select an image
    }

    try {
      // Define the file path and upload to Supabase storage
      final filePath =
          'group_photos/${DateTime.now().millisecondsSinceEpoch}_${image.name}';
      final fileBytes = await image.readAsBytes();

      final response = await Supabase.instance.client.storage
          .from('group_photos')
          .uploadBinary(filePath, fileBytes);
      print(response);

      // Get the public URL for the uploaded file
      final publicUrl = Supabase.instance.client.storage
          .from('group_photos/')
          .getPublicUrl(filePath);

      return publicUrl;
    } catch (e) {
      debugPrint('Error uploading image: $e');
      return null;
    }
  }
}
// i am in here recevid a null 