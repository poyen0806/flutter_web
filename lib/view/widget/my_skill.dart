import 'package:flutter/material.dart';
import 'package:flutter_web/view_model/theme_view_model.dart';
import 'package:provider/provider.dart';

class MySkill extends StatelessWidget {
  const MySkill({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeViewModel>(
      builder: (context, themeVM, child) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Programming Language",
              style: TextStyle(
                color: themeVM.themeData.colorScheme.onPrimary,
                fontSize: 24,
              ),
            ),
            Text(
              "C/C++, Python, Java, Dart",
              style: TextStyle(
                color: themeVM.themeData.colorScheme.onPrimary.withOpacity(0.6),
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Framework",
              style: TextStyle(
                color: themeVM.themeData.colorScheme.onPrimary,
                fontSize: 24,
              ),
            ),
            Text(
              "Flutter, Firebase",
              style: TextStyle(
                color: themeVM.themeData.colorScheme.onPrimary.withOpacity(0.6),
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Tools",
              style: TextStyle(
                color: themeVM.themeData.colorScheme.onPrimary,
                fontSize: 24,
              ),
            ),
            Text(
              "Visual Studio Code, Git, Figma",
              style: TextStyle(
                color: themeVM.themeData.colorScheme.onPrimary.withOpacity(0.6),
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
