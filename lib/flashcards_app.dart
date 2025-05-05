import 'package:flashcards/core/shared/screens/home_screen.dart';
import 'package:flutter/material.dart';

class FlashcardsApp extends StatelessWidget {
  const FlashcardsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.of(context).copyWith(
          brightness: Brightness.light,
          primary: const Color(0xFF14b8a6),
          onPrimary: const Color(0xFF020817),
          secondary: Colors.grey[200]!,
          onSecondary: const Color(0xFF14b8a6),
          error: Colors.red,
          onError: Colors.white,
          surface: Colors.white,
          onSurface: const Color(0xFF020817),
          outlineVariant: Colors.black12,
        ),
        textTheme: const TextTheme(
          // titleSmall: This has already its own place
          titleLarge: TextStyle(fontWeight: FontWeight.bold),
          titleMedium: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          bodyLarge: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          bodyMedium: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
          labelMedium: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: Color(0xFF64748B),
          ),
          bodySmall: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: Color(0xFF64748B),
          ),
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: ButtonStyle(
            textStyle: WidgetStatePropertyAll(
              TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            foregroundColor: WidgetStatePropertyAll(Colors.white),
            shape: WidgetStateProperty.fromMap({
              WidgetState.any: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              )
            }),
          ),
        ),
        searchBarTheme: SearchBarThemeData(
          backgroundColor: const WidgetStatePropertyAll(Colors.white),
          elevation: const WidgetStatePropertyAll(0),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              side: const BorderSide(width: 0),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          padding: const WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 12),
          ),
          textStyle: const WidgetStatePropertyAll(
            TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          hintStyle: const WidgetStatePropertyAll(
            TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xFF64748B),
            ),
          ),
        ),
        tabBarTheme: TabBarTheme(
          indicatorSize: TabBarIndicatorSize.tab,
          dividerHeight: 0,
          indicator: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xFF64748B),
          ),
          labelStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xFF020817),
          ),
        ),
        progressIndicatorTheme: const ProgressIndicatorThemeData(
          linearTrackColor: Color(0xFFF1F5F9),
        ),
        listTileTheme: ListTileThemeData(
          horizontalTitleGap: 12,
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Colors.black12),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        popupMenuTheme: PopupMenuThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
