import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../models/note_model.dart';
import 'colors_list_view.dart';

class EditNoteColorsList extends StatefulWidget {
  const EditNoteColorsList({super.key, required this.note});

  final NoteModel note;
  @override
  State<EditNoteColorsList> createState() => _EditNoteColorsListState();
}

class _EditNoteColorsListState extends State<EditNoteColorsList> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = kColorsList.indexOf(
      Color(widget.note.color),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76,
      child: ListView.builder(
        itemCount: kColorsList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: GestureDetector(
            onTap: () {
              currentIndex = index;
              widget.note.color = kColorsList[index].value;
              setState(() {});
            },
            child: ColorItem(
              color: kColorsList[index],
              isActive: currentIndex == index,
            ),
          ),
        ),
      ),
    );
  }
}
