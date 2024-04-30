import 'package:flutter/material.dart' hide Router;
import 'package:flutter_web/firebase_options.dart';
import 'package:flutter_web/view_model/platform_view_model.dart';
import 'package:flutter_web/view_model/theme_view_model.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:flutter_web/router/router.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  // Set the URL strategy for the web without "#"
  setPathUrlStrategy();

  // Ensure that the Flutter binding is initialized before proceeding
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase with default options for the current platform
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  
  // Disable the debug check for invalid value type in Provider
  Provider.debugCheckInvalidValueType = null;

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeViewModel()),
        ChangeNotifierProvider(create: (_) => PlatformViewModel()),
      ],
      child: const Main(),
    ),
  );
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Web',
      locale: const Locale('zh', 'TW'),
      routerConfig: Router.router,
    );
  }
}