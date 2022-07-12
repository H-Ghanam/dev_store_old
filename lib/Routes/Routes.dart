import 'package:dev_store/UI/screens/login.dart';
import 'package:dev_store/UI/widgets/tab_view.dart';
import 'package:fluent_ui/fluent_ui.dart';

Map<String, Widget Function(BuildContext context)> routes = {
  'appPage': (context) => Login(),
  'start': (context) => const TabViewPage(),
};
