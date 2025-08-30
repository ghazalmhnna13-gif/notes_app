import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/widgets/custom_app_bar.dart';
import 'package:music_notes_player_app_setup/widgets/custom_note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CustomAppBar(),
          NoteItem()
        ],
      ),
    );
  }
}
