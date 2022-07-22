part of 'app_bloc.dart';

@immutable
abstract class AppEvent {}

class OnAppStartEvent extends AppEvent {}

class OnActivePageChangeEvent extends AppEvent {
  final int index;

  OnActivePageChangeEvent({required this.index});
}
