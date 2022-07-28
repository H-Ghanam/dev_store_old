// import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'showGrid_state.dart';

class ShowGridCubit extends Cubit<ShowGridState> {
  ShowGridCubit() : super(ShowGridInitial());
  static ShowGridCubit get(BuildContext context) {
    return BlocProvider.of(context);
  }

  bool visibility = false;
  Hidegrid() {
    visibility = false;
    emit(Hide());
  }

  Showgrid() {
    visibility = true;
    emit(Show());
  }
}
