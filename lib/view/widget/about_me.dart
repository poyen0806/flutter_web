import 'package:flutter/material.dart';
import 'package:flutter_web/view/widget/custom_timeline.dart';
import 'package:flutter_web/view/widget/my_skill.dart';
import 'package:flutter_web/view/widget/profile_intro.dart';
import 'package:flutter_web/view_model/theme_view_model.dart';
import 'package:provider/provider.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeViewModel>(
      builder: (context, themeVM, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About Me",
                    style: TextStyle(
                      color: themeVM.themeData.colorScheme.onPrimary,
                      fontSize: 40,
                    ),
                  ),
                  Text(
                    "# Student",
                    style: TextStyle(
                      color: themeVM.themeData.colorScheme.onPrimary
                          .withOpacity(0.6),
                      fontSize: 28,
                    ),
                  ),
                  Text(
                    "# Developer",
                    style: TextStyle(
                      color: themeVM.themeData.colorScheme.onPrimary
                          .withOpacity(0.6),
                      fontSize: 28,
                    ),
                  ),
                  Text(
                    "# Customer-Centric",
                    style: TextStyle(
                      color: themeVM.themeData.colorScheme.onPrimary
                          .withOpacity(0.6),
                      fontSize: 28,
                    ),
                  ),
                  Text(
                    "# Self-Planning",
                    style: TextStyle(
                      color: themeVM.themeData.colorScheme.onPrimary
                          .withOpacity(0.6),
                      fontSize: 28,
                    ),
                  ),
                  Text(
                    "# Collaborator",
                    style: TextStyle(
                      color: themeVM.themeData.colorScheme.onPrimary
                          .withOpacity(0.6),
                      fontSize: 28,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 1080,
              width: 60,
              child: VerticalDivider(
                thickness: 1.5,
              ),
            ),
            Expanded(
              flex: 7,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Profile",
                      style: TextStyle(
                        color: themeVM.themeData.colorScheme.onPrimary,
                        fontSize: 36,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        border: Border.all(
                          color: Colors.grey[500]!,
                          width: 1.5,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: Image.asset(
                          "assets/images/profile.png",
                          height: 120,
                          width: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const ProfileIntro(),
                    const SizedBox(height: 50),
                    Text(
                      "Education",
                      style: TextStyle(
                        color: themeVM.themeData.colorScheme.onPrimary,
                        fontSize: 36,
                      ),
                    ),
                    const CustomTimeline(),
                    const SizedBox(height: 50),
                    Text(
                      "Skills",
                      style: TextStyle(
                        color: themeVM.themeData.colorScheme.onPrimary,
                        fontSize: 36,
                      ),
                    ),
                    const MySkill(),
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
