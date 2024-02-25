import 'package:flutter_web/router/routes.dart';
import 'package:flutter_web/view/page/home_page.dart';
import 'package:go_router/go_router.dart';

/// 管理所有路由的 class，新增或編輯自己的路由時，不要碰到其他路由設定
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
