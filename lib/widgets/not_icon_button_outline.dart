import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testapp/core/constants.dart';

// ignore: camel_case_types
class notebuttonoutline extends StatelessWidget {
  const notebuttonoutline({
    // ignore: non_constant_identifier_names
    required this.Icon,
    required this.onPressed,
    super.key,
  });

  final IconData Icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: FaIcon(Icon),
      style: IconButton.styleFrom(
        backgroundColor: primary,
        foregroundColor: white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(color: black),
        ),
      ),
    );
  }
}
