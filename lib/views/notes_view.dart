import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_notes_player_app_setup/const/notes_const.dart';
import 'package:music_notes_player_app_setup/cubit/notes_cubit/notes_cubit.dart';
import 'package:music_notes_player_app_setup/widgets/add_note_bottom_sheet.dart';
import 'package:music_notes_player_app_setup/widgets/notes_views_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        body: const NotesViewBody(),
        //
        floatingActionButton: FloatingActionButton(
            shape: const CircleBorder(),
            backgroundColor: kPrimaryColor,
            child: const Icon(
              Icons.add,
              color: Colors.black,
            ),
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return const AddNoteBottomSheet();
                  });
            }),
      ),
    );
  }
}
