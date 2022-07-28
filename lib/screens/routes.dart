import 'package:dev_store/cubit/showGrid_cubit.dart';
import 'package:dev_store/screens/app/app_main.dart';
import 'package:dev_store/screens/login/login_page.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Map<String, Widget Function(BuildContext context)> routes = {
  '/login': (context) => const Login(),
  '/app': (context) =>  BlocProvider<ShowGridCubit>(
        create: (context) => ShowGridCubit(),
        child:const App(),
      ),
  // '/filePickerDemo': (context) => FilePickerDemo(),
};
