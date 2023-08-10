import 'package:flutter/material.dart';
import 'package:notes_app/views/Widgets/text_field.dart';

import 'custom_add_button.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(
              height: 32,
            ),
            CustomTextField(
              hint: 'title',
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hint: 'content',
              maxLines: 5,
            ),
            SizedBox(
              height: 48,
            ),
            CustomButton(),
            SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}
