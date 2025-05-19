import 'package:flashcards/core/shared/screens/home_screen.dart';
import 'package:flashcards/core/shared/theming/app_themes.dart';
import 'package:flutter/material.dart';

class FlashcardsApp extends StatelessWidget {
  const FlashcardsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: AppThemes.lightTheme(context),
      builder: _builder,
      home: const HomeScreen(),
    );
  }

  Widget _builder(
    BuildContext context,
    Widget? child,
  ) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(
        textScaler: TextScaler.linear(MediaQuery.sizeOf(context).width / 400.0),
      ),
      child: child!,
    );
  }
}
