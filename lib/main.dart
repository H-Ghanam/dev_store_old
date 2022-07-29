import 'package:dev_store/blocs/app_bloc/app_bloc.dart';
import 'package:dev_store/blocs/invoice_bloc/invoice_bloc.dart';
import 'package:dev_store/data/repositories/invoice_repository.dart';
import 'package:dev_store/routes.dart';
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
    });
  }

  runApp(const Main());
}

// ButtonState<Color?> kDefaultTileColor(BuildContext context, bool isTop) {
//   return ButtonState.resolveWith((states) {
//     return ButtonThemeData.uncheckedInputColor(
//       FluentTheme.of(context),
//       states,
//     );
//   });
// }

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AppTheme(),
      builder: (context, _) {
        final appTheme = context.watch<AppTheme>();
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => AppBloc(),
            ),
            BlocProvider(
              create: (context) => InvoiceBloc(TnvoiceRepositoryImpl()),
            ),
          ],
          child: FluentApp(
            title: appTitle,
            themeMode: appTheme.mode,
            debugShowCheckedModeBanner: false,
            color: appTheme.color,
            darkTheme: ThemeData(
              dividerTheme: DividerThemeData(
                  decoration: BoxDecoration(color: appTheme.color)),
              fontFamily: "Almarai",
              cardColor: appTheme.color.darkest,
              brightness: Brightness.dark,
              accentColor: appTheme.color,
              visualDensity: VisualDensity.standard,
              focusTheme: FocusThemeData(
                glowFactor: is10footScreen() ? 2.0 : 0.0,
              ),
            ),
            theme: ThemeData(
              uncheckedColor: appTheme.color.dark,
              typography:
                  Typography.fromBrightness(color: appTheme.color.darkest),
              fontFamily: "Almarai",
              cardColor: appTheme.color.lightest,
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
                  data: NavigationPaneThemeData(
                      unselectedTextStyle: ButtonState.resolveWith((states) =>
                          const TextStyle(
                              color: Colors.white, fontFamily: "almarai")),
                      selectedTextStyle: ButtonState.resolveWith((states) =>
                          TextStyle(
                              color: appTheme.color.darkest,
                              fontFamily: "almarai")),
                      selectedIconColor: ButtonState.resolveWith(
                          (states) => appTheme.color.darkest),
                      tileColor: ButtonState.resolveWith(
                          (states) => appTheme.color.lighter),
                      backgroundColor: appTheme.color.lighter,
                      unselectedIconColor: ButtonState.resolveWith(
                          (states) => appTheme.color.darkest),
                      highlightColor: Colors.red),

                  //// Enable wimdows transparency

                  //   data: NavigationPaneThemeData(
                  //   backgroundColor: appTheme.windowEffect !=
                  //           flutter_acrylic.WindowEffect.disabled
                  //       ? Colors.transparent
                  //       : null,
                  // ),

                  // data: NavigationPaneThemeData(backgroundColor: Color.fromARGB(255, 60, 83, 102),tileColor: ButtonState.all(Color.fromARGB(255, 32, 49, 66))),
                  child: child!,
                ),
              );
            },
            initialRoute: '/login',
            routes: routes,
          ),
        );
      },
    );
  }
}
