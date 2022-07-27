import 'package:dev_store/screens/App/pages/invoice/sale/test.dart';
import 'package:dev_store/screens/app/app_main.dart';
import 'package:dev_store/screens/login/login_page.dart';
import 'package:fluent_ui/fluent_ui.dart';

Map<String, Widget Function(BuildContext context)> routes = {
  '/login': (context) => const Login(),
  '/app': (context) => const App(),
  '/filePickerDemo': (context) => FilePickerDemo(),

};
