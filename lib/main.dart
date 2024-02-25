import 'package:flutter/material.dart' hide Router;
import 'package:flutter_web/firebase_options.dart';
import 'package:flutter_web/view/page/computer_layout.dart';
import 'package:flutter_web/view/page/mobile_layout.dart';
import 'package:flutter_web/view/page/tablet_layout.dart';
import 'package:flutter_web/view_model/theme_view_model.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:flutter_web/router/router.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:responsive_builder/responsive_builder.dart';

Future<void> main() async {
  setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  Provider.debugCheckInvalidValueType = null;

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeViewModel()),
      ],
      child: const Main(),
    ),
  );
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeViewModel>(
      builder: (context, themeVM, child) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: "Poyen",
        theme: themeVM.themeData,
        locale: const Locale("zh", "TW"),
        routerConfig: Router.router,
        builder: (context, navigator) => ResponsiveBuilder(
          builder: (context, sizingInformation) {
            if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
              return const ComputerLayout();
            } else if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
              return const TabletLayout();
            } else {
              return const MobileLayout();
            }
          },
        ),
      ),
    );
  }
}
