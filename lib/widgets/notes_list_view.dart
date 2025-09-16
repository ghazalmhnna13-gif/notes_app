import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_notes_player_app_setup/cubit/notes_cubit/notes_cubit.dart';
import 'package:music_notes_player_app_setup/cubit/notes_cubit/notes_state.dart';
import 'package:music_notes_player_app_setup/models/note_model.dart';
import 'package:music_notes_player_app_setup/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: BlocBuilder<NotesCubit, NotesState>(builder: (context, state) {
      List<NoteModel> notesList =
          BlocProvider.of<NotesCubit>(context).notesList!;
      return Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: ListView.builder(
            itemCount: notesList.length,
            itemBuilder: (context, index) {
              return const NoteItem();
            }),
      );
    }));
  }
}
