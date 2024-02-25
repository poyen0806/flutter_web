import 'package:flutter/material.dart';
import 'package:flutter_web/view_model/theme_view_model.dart';
import 'package:provider/provider.dart';

class ProfileIntro extends StatelessWidget {
  const ProfileIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeViewModel>(
      builder: (context, themeVM, child) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DefaultTextStyle(
              style: DefaultTextStyle.of(context).style,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Welcome, I'm",
                      style: TextStyle(
                        color: themeVM.themeData.colorScheme.onPrimary,
                        fontSize: 32,
                      ),
                    ),
                    TextSpan(
                      text: " PoYen",
                      style: TextStyle(
                        color: Colors.orange[300],
                        fontSize: 32,
                      ),
                    ),
                    TextSpan(
                      text: ", Student / Developer\n",
                      style: TextStyle(
                        color: themeVM.themeData.colorScheme.onPrimary,
                        fontSize: 32,
                      ),
                    ),
                    TextSpan(
                      text:
                          "I'm a computer science student with a keen interest in product design. ",
                      style: TextStyle(
                        color: themeVM.themeData.colorScheme.onPrimary
                            .withOpacity(0.6),
                        fontSize: 20,
                      ),
                    ),
                    TextSpan(
                      text:
                          "While developing my coding skills, I bring a creative perspective to projects. ",
                      style: TextStyle(
                        color: themeVM.themeData.colorScheme.onPrimary
                            .withOpacity(0.6),
                        fontSize: 20,
                      ),
                    ),
                    TextSpan(
                      text:
                          "Excited to contribute to innovative solutions at the intersection of technology and design.",
                      style: TextStyle(
                        color: themeVM.themeData.colorScheme.onPrimary
                            .withOpacity(0.6),
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
