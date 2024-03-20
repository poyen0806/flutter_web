import 'package:flutter/material.dart';
import 'package:flutter_web/view_model/theme_view_model.dart';
import 'package:provider/provider.dart';

/// A title with welcome message of the home page
class TitleIntro extends StatelessWidget {
  const TitleIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeViewModel>(
      builder: (context, themeVM, child) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DefaultTextStyle(
            style: DefaultTextStyle.of(context).style,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Welcome, I'm",
                    style: TextStyle(
                      color: themeVM.themeData.colorScheme.onBackground,
                      fontSize: 72,
                    ),
                  ),
                  TextSpan(
                    text: " PoYen\n",
                    style: TextStyle(
                      color: Colors.orange[300],
                      fontSize: 72,
                    ),
                  ),
                  TextSpan(
                    text: "Student / Developer",
                    style: TextStyle(
                      color: themeVM.themeData.colorScheme.onBackground,
                      fontSize: 72,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 100),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(125),
              border: Border.all(
                color: Colors.grey[500]!,
                width: 1.5,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(125),
              child: Image.asset(
                "assets/images/profile.png",
                height: 250,
                width: 250,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
