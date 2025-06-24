import 'package:flutter/material.dart';

class AppThemes {
  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
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
      iconTheme: IconThemeData(
        color: Color(0xFF64748B),
      ),
      textTheme: const TextTheme(
        // titleSmall: This has already its own place
        titleLarge: TextStyle(fontWeight: FontWeight.bold),
        titleMedium: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
        titleSmall: TextStyle(
          fontWeight: FontWeight.w500,
          color: Color(0xFF64748B),
          fontSize: 16,
        ),
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
        labelLarge: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 12,
          color: Color(0xFF020817),
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
      tabBarTheme: TabBarThemeData(
        indicatorSize: TabBarIndicatorSize.tab,
        dividerHeight: 0,
        overlayColor: WidgetStatePropertyAll(Colors.transparent),
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
        minVerticalPadding: 16,
        horizontalTitleGap: 12,
        minTileHeight: 40,
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
    );
  }
}
