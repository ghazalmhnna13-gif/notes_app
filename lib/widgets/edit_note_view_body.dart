import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/widgets/custom_text_field.dart';
import 'package:music_notes_player_app_setup/widgets/custom_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
           SizedBox(
            height: 20,
          ),
       CustomAppBar(
            text: 'Edit Note',
            icon: Icons.check,
          ),
          Padding(
            padding:  EdgeInsets.only(top: 20, bottom: 15),
            child: CustomTextField(
              hintText: 'Title',
            ),
          ),
          CustomTextField(
            hintText: 'content',
            height: 7,
            maxLines: 3,
          ),
        ],
      ),
    );
  }
}
