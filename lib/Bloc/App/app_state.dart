part of 'app_bloc.dart';

@immutable
abstract class AppState {
  final StartAppModel? startAppModel;
  const AppState({this.startAppModel});
}

class AppInitial extends AppState {}

class AppLoadingState extends AppState {}

class AppStartedState extends AppState {
  // ignore: annotate_overrides, overridden_fields
  final StartAppModel startAppModel;
  const AppStartedState({required this.startAppModel})
      : super(startAppModel: startAppModel);
}

class AppErrorState extends AppState {
  // ignore: prefer_typing_uninitialized_variables
  final error;
  const AppErrorState(this.error);
}
