import 'package:dev_store/Modules/App/responses/start_app.dart';
import 'package:dev_store/Services/app_service.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppInitial()) {
    on<OnAppStartEvent>(_startApp);
  }
}

Future<void> _startApp(OnAppStartEvent event, Emitter<AppState> emit) async {
  try {
    emit(AppLoadingState());

    final data = await appServices.startApp();

    if (data.resp) {
      emit(AppStartedState(startAppRespose: data));
    } else {
      emit(AppErrorState(data.message));
    }
  } catch (e) {
    emit(AppErrorState(e.toString()));
  }
}
