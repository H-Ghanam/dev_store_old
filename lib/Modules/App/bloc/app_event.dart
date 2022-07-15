part of 'app_bloc.dart';

@immutable
abstract class AppEvent {}

class OnAppStartEvent extends AppEvent {}

class OnActivePageChange extends AppEvent {
  final int index;

  OnActivePageChange({required this.index});
}
