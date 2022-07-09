import 'package:bloc/bloc.dart';
import 'package:dev_store/Models/app_models/start_app_model.dart';
import 'package:dev_store/Services/app_service.dart';
import 'package:meta/meta.dart';

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
      emit(AppStartedState(startAppModel: data));
    } else {
      emit(AppErrorState(data.message));
    }
  } catch (e) {
    emit(AppErrorState(e.toString()));
  }
}
