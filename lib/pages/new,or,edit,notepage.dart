import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testapp/core/constants.dart';
import 'package:testapp/widgets/not_icon_button_outline.dart';
import 'package:testapp/widgets/note_icon_button.dart';

class NewOrEditNotePage extends StatefulWidget {
  const NewOrEditNotePage({super.key});

  @override
  State<NewOrEditNotePage> createState() => _NewOrEditNotePageState();
}

class _NewOrEditNotePageState extends State<NewOrEditNotePage> {
  late final QuillController quillController;

  @override
  void initState() {
    super.initState();
    quillController = QuillController.basic();
  }

  @override
  void dispose() {
    quillController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: notebuttonoutline(
            Icon: FontAwesomeIcons.chevronLeft,
            onPressed: () {},
          ),
        ),
        title: Text('New Note'),
        actions: [
          notebuttonoutline(
            Icon: FontAwesomeIcons.pen,
            onPressed: () {},
          ),
          SizedBox(width: 12),
          notebuttonoutline(
            Icon: FontAwesomeIcons.check,
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                hintText: 'Title Here',
                hintStyle: TextStyle(color: gray300),
                border: InputBorder.none,
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    'Last Modified',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, color: gray500),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Text(
                    '10 October 2024, 12:24 PM',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    'Created',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, color: gray500),
                  ),
                ),
                Expanded(
                    flex: 5,
                    child: Text(
                      '09 October 2024, 01:24 AM',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ))
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      Text(
                        'Created',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: gray500),
                      ),
                      NoteIconButton(
                          icon: FontAwesomeIcons.circlePlus, onPressed: () {}),
                    ],
                  ),
                ),
                Expanded(
                    flex: 5,
                    child: Text('No Tags Added',
                        style: TextStyle(fontWeight: FontWeight.bold)))
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Divider(
                color: gray500,
                thickness: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
