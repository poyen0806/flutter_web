import "package:flutter/material.dart";
import "package:flutter_web/view/widget/about_me.dart";
import "package:flutter_web/view/widget/base/base_app_bar.dart";
import 'package:flutter_web/view/widget/title_intro.dart';
import "package:flutter_web/view_model/theme_view_model.dart";
import "package:provider/provider.dart";

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BaseAppBar(),
      body: SingleChildScrollView(
        child: Consumer<ThemeViewModel>(
          builder: (context, themeVM, child) => const Center(
            child: Column(
              children: [
                SizedBox(height: 160),
                TitleIntro(),
                SizedBox(height: 240),
                AboutMe(),
                SizedBox(height: 80),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
