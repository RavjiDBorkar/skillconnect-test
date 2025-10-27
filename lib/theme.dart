import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color primary = Color(0xFF244A66); // deep blue
  static const Color accent = Color(0xFF67B7FF); // light blue
  static const Color surface = Color(0xFFFFFFFF);

  static ThemeData light() {
    final base = ThemeData.light();
    return base.copyWith(
      primaryColor: primary,
      scaffoldBackgroundColor: Color(0xFFF6F7F9),
      textTheme: GoogleFonts.poppinsTextTheme(base.textTheme).apply(
        bodyColor: Color(0xFF2B3A4A),
        displayColor: Color(0xFF2B3A4A),
      ),
      cardTheme: CardTheme(
        color: surface,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: primary,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        showUnselectedLabels: true,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: accent,
          onPrimary: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          padding: EdgeInsets.symmetric(vertical: 14, horizontal: 24),
        ),
      ),
    );
  }
}