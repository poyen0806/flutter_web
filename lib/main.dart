import 'package:flutter/material.dart' hide Router;
import 'package:flutter_web/firebase_options.dart';
import 'package:flutter_web/view_model/platform_view_model.dart';
import 'package:flutter_web/view_model/theme_view_model.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:flutter_web/router/router.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer2<ThemeViewModel, PlatformViewModel>(
      builder: (context, themeVM, pfVM, child) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: "Poyen",
        theme: themeVM.themeData,
        locale: const Locale("zh", "TW"),
        routerConfig: Router.router,
      ),
    );
  }
}
