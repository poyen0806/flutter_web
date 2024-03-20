import 'package:flutter_web/router/routes.dart';
import 'package:flutter_web/view/page/home_page.dart';
import 'package:go_router/go_router.dart';

/// the router of the app (home ✓, blog 𐄂, project 𐄂)
class Router {
  static GoRouter get router => GoRouter(
        initialLocation: Routes.home.path,
        routes: [
          // Home
          GoRoute(
            path: Routes.home.path,
            builder: (context, state) => const HomePage(),
          ),
          // Blog
          GoRoute(
            path: Routes.blog.path,
            builder: (context, state) => const HomePage(),
          ),
          // Project
          GoRoute(
            path: Routes.project.path,
            builder: (context, state) => const HomePage(),
          ),
        ],
      );
}
