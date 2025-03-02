import 'package:flutter/material.dart';
import 'package:testapp/core/constants.dart';
import 'package:testapp/pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes Application',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: background,
        appBarTheme: Theme.of(context).appBarTheme.copyWith(
              backgroundColor: Colors.transparent,
              titleTextStyle: TextStyle(
                color: primary,
                fontSize: 32,
                fontFamily: 'Fredoka',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      home: const MainPage(),
    );
  }
}
