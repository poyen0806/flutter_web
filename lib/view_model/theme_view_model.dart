import 'package:flutter/material.dart' hide Theme;
import 'package:flutter_web/model/theme.dart';

/// The view model of the theme
class ThemeViewModel with ChangeNotifier {
  Theme? _theme;
  Theme? get theme => _theme;

  /// Initialize the theme view model with the light theme
  ThemeViewModel() {
    _theme = Theme.light();
  }

  /// Get the current theme data
  ThemeData get themeData => _theme!.themeData;

  /// Toggle the theme
  void toggleTheme() {
    _theme?.toggleTheme();
    notifyListeners();
  }
}