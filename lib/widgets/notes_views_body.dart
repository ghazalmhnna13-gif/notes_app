import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_notes_player_app_setup/cubit/notes_cubit/notes_cubit.dart';
import 'package:music_notes_player_app_setup/widgets/custom_app_bar.dart';
import 'package:music_notes_player_app_setup/widgets/notes_list_view.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({
    super.key,
  });

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CustomAppBar(
            text: 'Notes',
            icon: Icons.search,
          ),
          NotesListView()
        ],
      ),
    );
  }
}
