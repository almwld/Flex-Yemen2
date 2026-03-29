import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFF1E88E5);
  static const Color secondaryColor = Color(0xFF43A047);
  static const Color accentColor = Color(0xFFFFB300);
  
  static const Color darkText = Color(0xFF212121);
  static const Color darkTextSecondary = Color(0xFF757575);
  static const Color lightText = Color(0xFFFFFFFF);
  static const Color lightTextSecondary = Color(0xFFBDBDBD);

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: primaryColor,
      colorScheme: const ColorScheme.light(
        primary: primaryColor,
        secondary: secondaryColor,
        surface: Colors.white,
        background: Color(0xFFF5F5F5),
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: darkText,
        onBackground: darkText,
      ),
      scaffoldBackgroundColor: const Color(0xFFF5F5F5),
      cardTheme: CardTheme(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      appBarTheme: const AppBarTheme(
        elevation: 0,
        centerTitle: true,
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
      ),
      textTheme: TextTheme(
        displayLarge: GoogleFonts.changa(fontSize: 32, fontWeight: FontWeight.bold, color: darkText),
        displayMedium: GoogleFonts.changa(fontSize: 28, fontWeight: FontWeight.bold, color: darkText),
        displaySmall: GoogleFonts.changa(fontSize: 24, fontWeight: FontWeight.bold, color: darkText),
        headlineLarge: GoogleFonts.changa(fontSize: 22, fontWeight: FontWeight.w600, color: darkText),
        headlineMedium: GoogleFonts.changa(fontSize: 20, fontWeight: FontWeight.w600, color: darkText),
        headlineSmall: GoogleFonts.changa(fontSize: 18, fontWeight: FontWeight.w600, color: darkText),
        titleLarge: GoogleFonts.changa(fontSize: 16, fontWeight: FontWeight.w600, color: darkText),
        titleMedium: GoogleFonts.changa(fontSize: 14, fontWeight: FontWeight.w500, color: darkText),
        titleSmall: GoogleFonts.changa(fontSize: 12, fontWeight: FontWeight.w500, color: darkTextSecondary),
        bodyLarge: GoogleFonts.changa(fontSize: 16, color: darkText),
        bodyMedium: GoogleFonts.changa(fontSize: 14, color: darkText),
        bodySmall: GoogleFonts.changa(fontSize: 12, color: darkTextSecondary),
        labelLarge: GoogleFonts.changa(fontSize: 14, fontWeight: FontWeight.w500, color: darkText),
        labelMedium: GoogleFonts.changa(fontSize: 12, fontWeight: FontWeight.w500, color: darkTextSecondary),
        labelSmall: GoogleFonts.changa(fontSize: 10, fontWeight: FontWeight.w500, color: darkTextSecondary),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: primaryColor, width: 2),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      primaryColor: primaryColor,
      colorScheme: const ColorScheme.dark(
        primary: primaryColor,
        secondary: secondaryColor,
        surface: Color(0xFF1E1E1E),
        background: Color(0xFF121212),
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: lightText,
        onBackground: lightText,
      ),
      scaffoldBackgroundColor: const Color(0xFF121212),
      cardTheme: CardTheme(
        elevation: 2,
        color: const Color(0xFF1E1E1E),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      appBarTheme: const AppBarTheme(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color(0xFF1E1E1E),
        foregroundColor: Colors.white,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color(0xFF1E1E1E),
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
      ),
      textTheme: TextTheme(
        displayLarge: GoogleFonts.changa(fontSize: 32, fontWeight: FontWeight.bold, color: lightText),
        displayMedium: GoogleFonts.changa(fontSize: 28, fontWeight: FontWeight.bold, color: lightText),
        displaySmall: GoogleFonts.changa(fontSize: 24, fontWeight: FontWeight.bold, color: lightText),
        headlineLarge: GoogleFonts.changa(fontSize: 22, fontWeight: FontWeight.w600, color: lightText),
        headlineMedium: GoogleFonts.changa(fontSize: 20, fontWeight: FontWeight.w600, color: lightText),
        headlineSmall: GoogleFonts.changa(fontSize: 18, fontWeight: FontWeight.w600, color: lightText),
        titleLarge: GoogleFonts.changa(fontSize: 16, fontWeight: FontWeight.w600, color: lightText),
        titleMedium: GoogleFonts.changa(fontSize: 14, fontWeight: FontWeight.w500, color: lightText),
        titleSmall: GoogleFonts.changa(fontSize: 12, fontWeight: FontWeight.w500, color: lightTextSecondary),
        bodyLarge: GoogleFonts.changa(fontSize: 16, color: lightText),
        bodyMedium: GoogleFonts.changa(fontSize: 14, color: lightText),
        bodySmall: GoogleFonts.changa(fontSize: 12, color: lightTextSecondary),
        labelLarge: GoogleFonts.changa(fontSize: 14, fontWeight: FontWeight.w500, color: lightText),
        labelMedium: GoogleFonts.changa(fontSize: 12, fontWeight: FontWeight.w500, color: lightTextSecondary),
        labelSmall: GoogleFonts.changa(fontSize: 10, fontWeight: FontWeight.w500, color: lightTextSecondary),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: const Color(0xFF2C2C2C),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: primaryColor, width: 2),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),
      ),
    );
  }
}
