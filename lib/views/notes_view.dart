import 'package:flutter/material.dart';
import 'Widgets/add_note_buttom_sheet.dart';
import 'Widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
              ),
              context: context,
              builder: (context) {
                return const AddNoteButtomSheet();
              });
        },
        child: Icon(Icons.add),
      ),
      body: const NotesViewBody(),
    );
  }
}
