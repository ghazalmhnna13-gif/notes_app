import 'package:flutter/material.dart';

class NotesView extends StatelessWidget {
NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text('Notes'),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        ),
      );
  }
}