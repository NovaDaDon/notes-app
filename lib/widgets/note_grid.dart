import 'package:flutter/material.dart';
import 'package:testapp/widgets/Note_Card.dart';

class Notegrid extends StatelessWidget {
  const Notegrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 15,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 8),
      itemBuilder: (context, int index) {
        return NoteCard(
          isInGrid: true,
        );
      },
    );
  }
}
