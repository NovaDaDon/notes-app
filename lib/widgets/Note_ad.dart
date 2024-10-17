import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testapp/core/constants.dart';

class Note_ad extends StatelessWidget {
  const Note_ad({
    required this.onPressed,
    super.key,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(16), boxShadow: [
        BoxShadow(
          color: black,
          offset: Offset(4, 4),
        ),
      ]),
      child: FloatingActionButton.large(
        onPressed: onPressed,
        backgroundColor: primary,
        foregroundColor: white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(16),
            side: BorderSide(color: black)),
        child: FaIcon(FontAwesomeIcons.plus),
      ),
    );
  }
}
