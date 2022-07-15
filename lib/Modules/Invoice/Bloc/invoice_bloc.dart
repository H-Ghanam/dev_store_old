import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dev_store/Models/invoice.dart';
import 'package:dev_store/Modules/Invoice/Responses/invoice_response.dart';
import 'package:dev_store/Services/app_service.dart';
import 'package:meta/meta.dart';

part 'invoice_event.dart';
part 'invoice_state.dart';

class InvoiceBloc extends Bloc<InvoiceEvent, InvoiceState> {
  InvoiceBloc() : super(InvoiceInitial()) {
    on<OnGetInvoiceEvent>(_getInvoices);
  }

  FutureOr<void> _getInvoices(
      InvoiceEvent event, Emitter<InvoiceState> emit) async {
    try {
      emit(InvoiceLoadingState());

      final data = await appServices.getInvoice(1);

      if (data.resp) {
        emit(InvoiceSuccessState(invoiceRespose: data));
      } else {
        emit(InvoiceErrorState(data.message));
      }
    } catch (e) {
      emit(InvoiceErrorState(e.toString()));
    }
  }
}
