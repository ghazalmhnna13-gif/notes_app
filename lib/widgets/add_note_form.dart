import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_notes_player_app_setup/const/notes_const.dart';
import 'package:music_notes_player_app_setup/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:music_notes_player_app_setup/models/note_model.dart';
import 'package:music_notes_player_app_setup/widgets/colors_list_view.dart';
import 'package:music_notes_player_app_setup/widgets/custom_botton.dart';
import 'package:music_notes_player_app_setup/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: EdgeInsets.only(
              left: 16,
              right: 16,
              bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 15),
                child: CustomTextField(
                  hintText: 'Title',
                  onSaved: (data) {
                    title = data;
                  },
                ),
              ),
              CustomTextField(
                hintText: 'content',
                height: 7,
                onSaved: (data) {
                  subTitle = data;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              const ColorsListView(),
              const SizedBox(
                height: 60,
              ),
              BlocBuilder<AddNoteCubit, AddNoteState>(
                  builder: (context, state) {
                return CustomBotton(
                    inAsyncCall: state is AddNoteLoading ? true : false,
                    text: 'Add',
                    buttonColor: kPrimaryColor,
                    textColor: Colors.black,
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                        DateTime dateTime = DateTime.now();
                        String formattedDate =
                            '${dateTime.day}-${dateTime.month}-${dateTime.year}';
                        NoteModel noteModel = NoteModel(
                            color: Colors.amber.value,
                            date: formattedDate,
                            subTitle: subTitle!,
                            title: title!);
                        BlocProvider.of<AddNoteCubit>(context)
                            .addNote(noteModel);
                      } else {
                        autovalidateMode = AutovalidateMode.always;
                        setState(() {});
                      }
                    });
              }),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
