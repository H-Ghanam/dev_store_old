// import 'package:dev_store/UI/Views/app_page.dart';
// import 'package:dev_store/UI/Views/screens/drag.dart';
// import 'package:dev_store/UI/Views/screens/fluent/aa.dart';
// import 'package:dev_store/UI/Views/screens/fluent.dart';
// import 'package:dev_store/UI/Views/screens/login.dart';
// import 'package:dev_store/UI/Views/screens/tab_view.dart';
// import 'package:dev_store/UI/Views/screens/tabs.dart';
import 'package:dev_store/UI/Views/screens/tab_view.dart';
import 'package:flutter/material.dart';

import '../UI/Views/screens/start.dart';
import '../UI/Views/screens/tab_view.dart' as t;

Map<String, Widget Function(BuildContext context)> routes = {
  'appPage': (context) => const TabViewPage(),
  'start': (context) => const Start(),
  // 'loadingPage'   : ( context ) => LoadingPage(),
  // 'getStarted'    : ( context ) => StartHomePage(),
  // 'signInPage'    : ( context ) => SignInPage(),
  // 'signUpPage'    : ( context ) => SignUpPage(),
  // 'homePage'      : ( context ) => HomePage(),
  // 'cartPage'      : ( context ) => CartPage(),
  // 'favoritePage'  : ( context ) => FavoritePage(),
  // 'profilePage'   : ( context ) => ProfilePage(),
};
