import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'money_event.dart';
part 'money_state.dart';

class MoneyBloc extends Bloc<MoneyEvent, MoneyState> {
  MoneyBloc() : super(MoneyInitial()) {
    on<MoneyEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
