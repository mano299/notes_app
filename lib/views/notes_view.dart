import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/widgets/custom_notes_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: (context),
            builder: (context) {
              return AddNoteBottomSheet();
            },
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          );
        },
        backgroundColor: Colors.cyan,
        child: Icon(Icons.add),
      ),
      body: CustomNotesBody(),
    );
  }
}
