import 'package:flutter/material.dart';

class Theme {
  bool isDarkMode;
  ThemeData themeData;

  Theme({
    required this.isDarkMode,
    required this.themeData,
  });

  factory Theme.light() {
    return Theme(
      isDarkMode: false,
      themeData: ThemeData(
        brightness: Brightness.light,
        colorScheme: const ColorScheme.light().copyWith(
          primary: Colors.white, // 主要顏色，通常用於 AppBar 的背景色等
          secondary: Colors.lime[50], // 次要顏色，通常用於浮動按鈕等
          background: Colors.white, // 背景顏色，通常用於 Scaffold 的背景色
          surface:  Colors.white, // 表面顏色，通常用於 Card 的背景色等
          onPrimary: Colors.grey[700], // 在主要顏色上的文字顏色
          onSecondary: Colors.grey[700], // 在次要顏色上的文字顏色
          onBackground: Colors.grey[700], // 在背景顏色上的文字顏色
          onSurface: Colors.grey[700], // 在表面顏色上的文字顏色
        ),
      ),
    );
  }

  factory Theme.dark() {
    return Theme(
      isDarkMode: true,
      themeData: ThemeData(
        brightness: Brightness.dark,
        colorScheme: const ColorScheme.dark().copyWith(
          primary: Colors.grey[900], // 主要顏色，通常用於 AppBar 的背景色等
          secondary: Colors.orange[300], // 次要顏色，通常用於浮動按鈕等
          background: Colors.grey[900], // 背景顏色，通常用於 Scaffold 的背景色
          surface: Colors.grey[700], // 表面顏色，通常用於 Card 的背景色等
          onPrimary: Colors.white, // 在主要顏色上的文字顏色
          onSecondary: Colors.grey[900], // 在次要顏色上的文字顏色
          onBackground: Colors.white, // 在背景顏色上的文字顏色
          onSurface: Colors.white, // 在表面顏色上的文字顏色
        ),
      ),
    );
  }

  void toggleTheme() {
    isDarkMode = !isDarkMode;
    themeData = isDarkMode ? Theme.dark().themeData : Theme.light().themeData;
  }
}
