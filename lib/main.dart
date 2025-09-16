import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:music_notes_player_app_setup/const/notes_const.dart';
import 'package:music_notes_player_app_setup/cubit/notes_cubit/notes_cubit.dart';
import 'package:music_notes_player_app_setup/models/note_model.dart';
import 'package:music_notes_player_app_setup/views/notes_view.dart';
import 'package:music_notes_player_app_setup/views/simple_bloc_observer.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
            create: (context) => NotesCubit(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark(),
          home: const NotesView()),
    );
  }
}
