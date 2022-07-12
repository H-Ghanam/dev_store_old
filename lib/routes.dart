import 'package:dev_store/screens/App/app.dart';
import 'package:dev_store/screens/Login/login.dart';
import 'package:fluent_ui/fluent_ui.dart';

Map<String, Widget Function(BuildContext context)> routes = {
  '/login': (context) => const Login(),
  '/app': (context) => const App(),
};
