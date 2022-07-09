import 'package:dev_store/UI/Views/app_page.dart';
import 'package:dev_store/UI/Views/screens/login.dart';
import 'package:flutter/material.dart';

import '../UI/Views/screens/start.dart';

Map<String, Widget Function(BuildContext context)> routes = {
  'appPage': (context) => Login(),
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
