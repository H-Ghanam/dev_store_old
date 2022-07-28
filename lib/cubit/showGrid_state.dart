part of 'showGrid_cubit.dart';

abstract class ShowGridState extends Equatable {
  const ShowGridState();

  @override
  List<Object> get props => [];
}

class ShowGridInitial extends ShowGridState {}

class Show extends ShowGridState {}

class Hide extends ShowGridState {}
