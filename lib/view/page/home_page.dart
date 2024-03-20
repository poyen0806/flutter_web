import "package:flutter/material.dart";
import "package:flutter_web/view/widget/about_me.dart";
import "package:flutter_web/view/widget/base/base_scaffold.dart";
import 'package:flutter_web/view/widget/title_intro.dart';
import "package:flutter_web/view_model/platform_view_model.dart";
import "package:provider/provider.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: Center(
        child: Consumer<PlatformViewModel>(
          builder: (context, pfVM, child) => const Center(
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
