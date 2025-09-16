import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:music_notes_player_app_setup/const/notes_const.dart';
import 'package:music_notes_player_app_setup/cubit/notes_cubit/notes_state.dart';
import 'package:music_notes_player_app_setup/models/note_model.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notesList;
  void fetchAllNotes() {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    notesList = notesBox.values.toList();
    emit(NotesSuccess());
  }
}
