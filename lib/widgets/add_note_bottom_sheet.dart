import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/const/notes_const.dart';
import 'package:music_notes_player_app_setup/widgets/custom_Text_Field.dart';
import 'package:music_notes_player_app_setup/widgets/Custom_botton.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 30, bottom: 15),
                child: CustomTextField(
                  hintText: 'Title',
                ),
              ),
              const CustomTextField(
                hintText: 'content',
                height: 7,
              ),
              const SizedBox(
                height: 60,
              ),
              CustomBotton(
                text: 'Add',
                buttonColor: KPrimaryColor,
                textColor: Colors.black,
              ),
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
