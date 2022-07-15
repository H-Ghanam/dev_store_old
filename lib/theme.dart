import 'package:dev_store/Modules/App/bloc/app_bloc.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_acrylic/flutter_acrylic.dart';

enum NavigationIndicators { sticky, end }

class AppTheme extends ChangeNotifier {
  // AccentColor _color = systemAccentColor;
  AccentColor _color = Colors.green;
  AccentColor get color => _color;
  set color(AccentColor color) {
    _color = color;
    notifyListeners();
  }

  ThemeMode _mode = ThemeMode.light;
  ThemeMode get mode => _mode;
  set mode(ThemeMode mode) {
    _mode = mode;
    notifyListeners();
  }

  int _index = 0;
  int get index => _index;
  set index(int index) {
    _index = index;
    notifyListeners();
  }

  PaneDisplayMode _displayMode = PaneDisplayMode.compact;
  PaneDisplayMode get displayMode => _displayMode;
  set displayMode(PaneDisplayMode displayMode) {
    _displayMode = displayMode;
    notifyListeners();
  }

  NavigationIndicators _indicator = NavigationIndicators.end;
  NavigationIndicators get indicator => _indicator;
  set indicator(NavigationIndicators indicator) {
    _indicator = indicator;
    notifyListeners();
  }

  WindowEffect _windowEffect = WindowEffect.disabled;
  WindowEffect get windowEffect => _windowEffect;
  set windowEffect(WindowEffect windowEffect) {
    _windowEffect = windowEffect;
    notifyListeners();
  }

  void setEffect(WindowEffect effect, BuildContext context) {
    Window.setEffect(
      effect: effect,
      color: [
        WindowEffect.solid,
        WindowEffect.acrylic,
      ].contains(effect)
          ? FluentTheme.of(context).micaBackgroundColor.withOpacity(0.05)
          : Colors.transparent,
      dark: FluentTheme.of(context).brightness.isDark,
    );
  }

  TextDirection _textDirection = TextDirection.rtl;
  TextDirection get textDirection => _textDirection;
  set textDirection(TextDirection direction) {
    _textDirection = direction;
    notifyListeners();
  }

  Locale? _locale = const Locale('ar');
  Locale? get locale => _locale;
  set locale(Locale? locale) {
    _locale = locale;
    notifyListeners();
  }
}

AccentColor get systemAccentColor {
  // if ((defaultTargetPlatform == TargetPlatform.windows ||
  //         defaultTargetPlatform == TargetPlatform.android) &&
  //     !kIsWeb) {
  //   return AccentColor.swatch({
  //     'darkest': SystemTheme.accentColor.darkest,
  //     'darker': SystemTheme.accentColor.darker,
  //     'dark': SystemTheme.accentColor.dark,
  //     'normal': SystemTheme.accentColor.accent,
  //     'light': SystemTheme.accentColor.light,
  //     'lighter': SystemTheme.accentColor.lighter,
  //     'lightest': SystemTheme.accentColor.lightest,
  //   });
  // }
  return Colors.red;
}
