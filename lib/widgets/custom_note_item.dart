import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNoteView();
        }));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Container(
          padding: const EdgeInsets.only(top: 16, bottom: 16, left: 16),
          decoration: BoxDecoration(
              color: const Color(0xffFFCC80),
              borderRadius: BorderRadius.circular(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: const Text(
                  'Flutter tips',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16, right: 16),
                  child: Text(
                    'Build your carrer with ghazal mhnna',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black.withValues(alpha: .5)),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 35,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30, top: 16),
                child: Text('May 21,2025',
                    style:
                        TextStyle(color: Colors.black.withValues(alpha: .5))),
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
