import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testapp/pages/new,or,edit,notepage.dart';
import 'package:testapp/widgets/Note_ad.dart';
import 'package:testapp/core/constants.dart';
import 'package:testapp/widgets/not_icon_button_outline.dart';
import 'package:testapp/widgets/note_grid.dart';
import 'package:testapp/widgets/note_icon_button.dart';
import 'package:testapp/widgets/note_list.dart';
import 'package:testapp/widgets/search_field.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<String> dropdownOptions = ['Date modified', 'Date created'];
  late String dropdownValue = dropdownOptions.first;
  bool isDecending = false;
  bool isGrid = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes application'),
        actions: [
          notebuttonoutline(
            Icon: FontAwesomeIcons.rightFromBracket,
            onPressed: () {},
          ),
        ],
      ),
      floatingActionButton: Note_ad(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => NewOrEditNotePage()));
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            searchField(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  NoteIconButton(
                    icon: isDecending
                        ? FontAwesomeIcons.arrowDown
                        : FontAwesomeIcons.arrowUp,
                    size: 18,
                    onPressed: () {
                      () {
                        setState(() {
                          isDecending = !isDecending;
                        });
                      };
                    },
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  DropdownButton(
                      value: dropdownValue,
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: FaIcon(
                          FontAwesomeIcons.arrowDownWideShort,
                          size: 17,
                          color: gray700,
                        ),
                      ),
                      underline: SizedBox.shrink(),
                      borderRadius: BorderRadius.circular(16),
                      isDense: true,
                      items: dropdownOptions
                          .map(
                            (e) => DropdownMenuItem(
                              value: e,
                              child: Row(children: [
                                Text(e),
                                if (e == dropdownValue) ...[
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Icon(Icons.check),
                                ],
                              ]),
                            ),
                          )
                          .toList(),
                      selectedItemBuilder: (context) =>
                          dropdownOptions.map((e) => Text(e)).toList(),
                      onChanged: (newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      }),
                  Spacer(),
                  NoteIconButton(
                    icon: isGrid
                        ? FontAwesomeIcons.tableCellsLarge
                        : FontAwesomeIcons.bars,
                    size: 18,
                    onPressed: () {
                      setState(() {
                        isGrid = !isGrid;
                      });
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: isGrid ? Notegrid() : NotesList(),
            ),
          ],
        ),
      ),
    );
  }
}
