import "package:flutter/material.dart";
import "package:flutter_web/view/widget/about_me.dart";
import "package:flutter_web/view/widget/base/base_scaffold.dart";
import 'package:flutter_web/view/widget/title_intro.dart';
import "package:flutter_web/view_model/platform_view_model.dart";
import "package:flutter_web/view_model/theme_view_model.dart";
import "package:provider/provider.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer2<ThemeViewModel, PlatformViewModel>(
      builder: (context, themeVM, pfVM, child) => const BaseScaffold(
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 200),
              TitleIntro(),
              SizedBox(height: 320),
              AboutMe(),
              SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}
