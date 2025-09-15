import 'package:music_notes_player_app_setup/models/note_model.dart';

class NotesState {}

class NotesInitial extends NotesState {}

class NotesLoading extends NotesState {}

class NotesSuccess extends NotesState {
  final List<NoteModel> notes;
  NotesSuccess(this.notes);
}

class NotesFailure extends NotesState {
  final String errorMessage;
  NotesFailure(this.errorMessage);
}
