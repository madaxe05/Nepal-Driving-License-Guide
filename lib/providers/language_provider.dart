import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageProvider with ChangeNotifier {
  bool _isNepali = false;
  static const String _key = 'app_language';

  bool get isNepali => _isNepali;
  String get languageCode => _isNepali ? 'np' : 'en';

  LanguageProvider() {
    _loadLanguage();
  }

  Future<void> _loadLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    _isNepali = prefs.getBool(_key) ?? false;
    notifyListeners();
  }

  Future<void> toggleLanguage() async {
    _isNepali = !_isNepali;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_key, _isNepali);
    notifyListeners();
  }

  Future<void> setLanguage(bool isNepali) async {
    _isNepali = isNepali;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_key, _isNepali);
    notifyListeners();
  }
}
