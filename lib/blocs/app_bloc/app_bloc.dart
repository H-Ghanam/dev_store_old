import 'dart:async';

import 'package:dev_store/data/api/start_app_responses.dart';
import 'package:dev_store/data/services/app_service.dart';
import 'package:dev_store/screens/app/pages/invoice/invoice_page.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppInitial()) {
    on<OnAppStartEvent>(_startApp);
    on<OnActivePageChangeEvent>(_setActivePageIndex);
  }

  Future<void> _setActivePageIndex(
      OnActivePageChangeEvent event, Emitter<AppState> emit) async {
    emit(ActivePageIndexState(index: event.index));
  }
}

Future<void> _startApp(OnAppStartEvent event, Emitter<AppState> emit) async {
  try {
    emit(AppLoadingState());

    final data = await appService.startApp();

    if (data.resp) {
      emit(AppStartedState(startAppRespose: data));
    } else {
      emit(AppErrorState(data.message));
    }
  } catch (e) {
    emit(AppErrorState(e.toString()));
  }
}
