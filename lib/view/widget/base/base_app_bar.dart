import 'package:flutter/material.dart';
import 'package:flutter_web/router/routes.dart';
import 'package:flutter_web/view/widget/theme_switcher.dart';
import 'package:flutter_web/view_model/theme_view_model.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

/// The base app bar of the app
class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BaseAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeViewModel>(
      builder: (context, themeVM, child) => AppBar(
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.all(60),
          child: Row(
            children: [
              const Spacer(),
              buildAction(
                context: context,
                title: 'Home',
                route: Routes.home.path,
              ),
              buildAction(
                context: context,
                title: 'Blog',
                route: Routes.blog.path,
              ),
              buildAction(
                context: context,
                title: 'Project',
                route: Routes.project.path,
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: ThemeSwitcher(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildAction({
  required BuildContext context,
  required String title,
  required String route,
}) {
  return Consumer<ThemeViewModel>(
    builder: (context, themeVM, child) => Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        onPressed: () => context.push(route),
        style: ElevatedButton.styleFrom(
          backgroundColor: themeVM.themeData.colorScheme.secondary,
        ),
        child: Text(
          title,
          style: TextStyle(
            color: themeVM.themeData.colorScheme.onSecondary,
          ),
        ),
      ),
    ),
  );
}
