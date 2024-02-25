import 'package:flutter/material.dart';
import 'package:flutter_web/view_model/theme_view_model.dart';
import 'package:provider/provider.dart';

class ThemeSwitcher extends StatelessWidget {
  const ThemeSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    const IconData sun = Icons.wb_sunny;
    const IconData moon = Icons.dark_mode;
    return Consumer<ThemeViewModel>(builder: (context, themeVM, child) {
      return Switch(
        value: themeVM.theme!.isDarkMode,
        onChanged: (newValue) {
          themeVM.toggleTheme();
        },
        trackOutlineColor: MaterialStateColor.resolveWith((states) => Colors.grey[700]!),
        activeTrackColor: Colors.grey[900],
        activeColor: Colors.orange[300],
        inactiveThumbColor: Colors.grey[900],
        inactiveTrackColor: Colors.orange[100],
        thumbIcon: MaterialStateProperty.resolveWith((states) {
          return themeVM.theme!.isDarkMode
              ? Icon(moon, color: Colors.grey[900])
              : Icon(sun, color: Colors.orange[100]);
        }),
      );
    });
  }
}
