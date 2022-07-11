import 'package:dev_store/Bloc/App/app_bloc.dart';
import 'package:dev_store/Routes/Routes.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as m;
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark));

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AppBloc()),
      ],
      child: FluentApp(
        debugShowCheckedModeBanner: false,
        title: 'E-Commers Products mmmmmmm',
        initialRoute: 'appPage',
        routes: routes,
      ),
    );
  }
}
