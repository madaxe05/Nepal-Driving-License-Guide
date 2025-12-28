import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const NepalLicenseGuideApp());
}

class NepalLicenseGuideApp extends StatelessWidget {
  const NepalLicenseGuideApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nepal License Guide',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        cardTheme: CardThemeData(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      darkTheme: ThemeData.dark().copyWith(
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: const Color(0xFF121212),
        cardColor: const Color(0xFF1E1E1E),
      ),
      themeMode: ThemeMode.system,
      home: const SplashScreen(),
    );
  }
}
