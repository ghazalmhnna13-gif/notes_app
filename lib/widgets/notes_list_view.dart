import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return const NoteItem();
          }),
    );
  }
}