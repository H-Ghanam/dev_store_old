import 'package:dev_store/Modules/App/bloc/app_bloc.dart';
import 'package:dev_store/UI/screens/login.dart';
import 'package:dev_store/UI/screens/app_container.dart';
import 'package:dev_store/theme.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:system_theme/system_theme.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:window_manager/window_manager.dart';
import 'package:flutter_acrylic/flutter_acrylic.dart' as flutter_acrylic;

const String appTitle = '';

bool get isDesktop {
  if (kIsWeb) return false;
  return [
    TargetPlatform.windows,
    TargetPlatform.linux,
    TargetPlatform.macOS,
  ].contains(defaultTargetPlatform);
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // if it's not on the web, windows or android, load the accent color
  if (!kIsWeb &&
      [
        TargetPlatform.windows,
        TargetPlatform.android,
      ].contains(defaultTargetPlatform)) {
    SystemTheme.accentColor.load();
  }

  setPathUrlStrategy();

  if (isDesktop) {
    await flutter_acrylic.Window.initialize();
    await WindowManager.instance.ensureInitialized();
    windowManager.waitUntilReadyToShow().then((_) async {
      await windowManager.setTitleBarStyle(
        TitleBarStyle.hidden,
        windowButtonVisibility: false,
      );
      // await windowManager.setSize(const Size(755, 545));
      await windowManager.setMinimumSize(const Size(350, 600));
      await windowManager.center();
      await windowManager.show();
      await windowManager.setPreventClose(true);
      await windowManager.setSkipTaskbar(false);
      // await windowManager.setFullScreen(true);
    });
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    //     statusBarColor: Colors.transparent,
    //     statusBarIconBrightness: Brightness.dark));

    // return MultiBlocProvider(
    //   providers: [
    //     BlocProvider(create: (context) => AppBloc()),
    //   ],
    //   child: FluentApp(
    //     debugShowCheckedModeBanner: false,
    //     title: 'E-Commers Products mmmmmmm',
    //     initialRoute: 'appPage',
    //     routes: routes,
    //   ),
    // );

    return ChangeNotifierProvider(
      create: (_) => AppTheme(),
      builder: (context, _) {
        final appTheme = context.watch<AppTheme>();
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => AppBloc()),
          ],
          child: FluentApp(
            title: appTitle,
            themeMode: appTheme.mode,
            debugShowCheckedModeBanner: false,
            color: appTheme.color,
            darkTheme: ThemeData(
              brightness: Brightness.dark,
              accentColor: appTheme.color,
              visualDensity: VisualDensity.standard,
              focusTheme: FocusThemeData(
                glowFactor: is10footScreen() ? 2.0 : 0.0,
              ),
            ),
            theme: ThemeData(
              accentColor: appTheme.color,
              visualDensity: VisualDensity.standard,
              focusTheme: FocusThemeData(
                glowFactor: is10footScreen() ? 2.0 : 0.0,
              ),
            ),
            locale: appTheme.locale,
            builder: (context, child) {
              return Directionality(
                textDirection: appTheme.textDirection,
                child: NavigationPaneTheme(
                  data: NavigationPaneThemeData(backgroundColor: Colors.blue),
                  child: child!,
                ),
              );
            },
            initialRoute: '/login',
            routes: {
              '/': (context) => const AppContainer(),
              '/login': (context) => const Login()
            },
          ),
        );
      },
    );
  }
}
