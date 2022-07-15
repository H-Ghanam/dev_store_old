part of 'app_bloc.dart';

@immutable
abstract class AppState {
  final StartAppRespose? startAppRespose;
  final int? activePageIndex;
  const AppState({this.activePageIndex, this.startAppRespose});
}

class AppInitial extends AppState {}

class AppLoadingState extends AppState {}

class AppStartedState extends AppState {
  // ignore: annotate_overrides, overridden_fields
  final StartAppRespose startAppRespose;
  const AppStartedState({required this.startAppRespose})
      : super(startAppRespose: startAppRespose);
}

class AppErrorState extends AppState {
  // ignore: prefer_typing_uninitialized_variables
  final error;
  const AppErrorState(this.error);
}

class SetActivePageIndexState extends AppState {
  // ignore: prefer_typing_uninitialized_variables
  final int index;
  const SetActivePageIndexState({required this.index})
      : super(activePageIndex: index);
}
