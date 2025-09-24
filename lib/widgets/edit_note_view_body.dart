import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_notes_player_app_setup/const/notes_const.dart';
import 'package:music_notes_player_app_setup/cubit/notes_cubit/notes_cubit.dart';
import 'package:music_notes_player_app_setup/models/note_model.dart';
import 'package:music_notes_player_app_setup/widgets/custom_color_item.dart';
import 'package:music_notes_player_app_setup/widgets/custom_text_field.dart';
import 'package:music_notes_player_app_setup/widgets/custom_app_bar.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          CustomAppBar(
            text: 'Edit Note',
            icon: Icons.check,
            onTap: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = content ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 15),
            child: CustomTextField(
              onChanged: (value) {
                title = value;
              },
              hintText: widget.note.title,
            ),
          ),
          CustomTextField(
            onChanged: (value) {
              content = value;
            },
            hintText: widget.note.subTitle,
            height: 7,
            maxLines: 3,
          ),
          const SizedBox(
            height: 10,
          ),
          EditNotesColorsList(note: widget.note)
        ],
      ),
    );
  }
}

class EditNotesColorsList extends StatefulWidget {
  final NoteModel note;
  const EditNotesColorsList({super.key, required this.note});

  @override
  State<EditNotesColorsList> createState() => _EditNotesColorsListState();
}

class _EditNotesColorsListState extends State<EditNotesColorsList> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kColors.indexWhere((Color) {
      return Color.value == widget.note.color;
    });
    print(currentIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: kColors.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.note.color = kColors[index].value;
                setState(() {});
              },
              child: ColorItem(
                isActive: currentIndex == index,
                color: kColors[index],
              ),
            );
          }),
    );
  }
}
