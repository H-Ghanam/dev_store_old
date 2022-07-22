import 'dart:async';
import 'dart:core';

import 'package:dev_store/data/api/invoice_response.dart';
import 'package:dev_store/models/options.dart';
import 'package:dev_store/screens/app/pages/invoice/invoice_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'invoice_event.dart';
part 'invoice_state.dart';

class InvoiceBloc extends Bloc<InvoiceEvent, InvoiceState> {
  final InvoiceRepository _invoiceRepository;

  InvoiceBloc(this._invoiceRepository) : super(const InvoiceState()) {
    on<OnGetInvoiceEvent>(_getInvoices);
    on<OnChangeTabEvent>(_setCurrenIindex);
    on<OnRemoveTabEvent>(_removeInvoice);
    on<OnReorderTabsEvent>(_reorderTab);
  }

  Future<void> _getInvoices(
      OnGetInvoiceEvent event, Emitter<InvoiceState> emit) async {
    try {
      final invoiceResponse = await _invoiceRepository.getInvoiceResponse(
          event.invoiceId, event.kind, event.storeId, state.getOptions);

      if (invoiceResponse.resp) {
        final invoiceData = invoiceResponse.invoiceData;
        final options = invoiceResponse.invoiceData.options;
        final invoice = invoiceData.invoice;
        late Tab tab;
        tab = Tab(
            text: Text(
                '${invoice.accountId ?? invoice.accountId} | ${invoice.id} | ${invoice.kind}'),
            onClosed: () {
              add(OnRemoveTabEvent(tab: tab));
            });
        return emit(state.copyWith(
          status: InvoiceStatus.loaded,
          invoices: List.of(state.invoices)..add(invoiceData),
          tabs: List.of(state.tabs)..add(tab),
          currentIndex: state.tabs.isNotEmpty ? state.tabs.length : 0,
          options: state.options ?? options,
          getOptions: state.options == null,
        ));
      } else {
        return emit(state.copyWith(
          status: InvoiceStatus.failure,
          error: invoiceResponse.message,
        ));
      }
    } catch (e) {
      emit(state.copyWith(
        status: InvoiceStatus.failure,
        error: e,
      ));
    }
  }

  Future<void> _removeInvoice(
      OnRemoveTabEvent event, Emitter<InvoiceState> emit) async {
    int tabIndex = state.tabs.indexOf(event.tab);
    emit(state.copyWith(
      invoices: List.of(state.invoices)..removeAt(tabIndex),
      tabs: List.of(state.tabs)..removeAt(tabIndex),
    ));

    add(OnChangeTabEvent(currentIndex: state.tabs.length - 1));
  }

  Future<void> _setCurrenIindex(
      OnChangeTabEvent event, Emitter<InvoiceState> emit) async {
    emit(state.copyWith(
      currentIndex: event.currentIndex,
    ));
  }

  Future<void> _reorderTab(
      OnReorderTabsEvent event, Emitter<InvoiceState> emit) async {
    int oldIndex = event.oldIndex;
    int newIndex = event.newIndex;
    if (oldIndex < newIndex) {
      newIndex -= 1;
    }

    InvoiceData invoiceData = List.of(state.invoices).elementAt(oldIndex);
    Tab tab = List.of(state.tabs).elementAt(oldIndex);

    emit(state.copyWith(
      invoices: List.of(state.invoices)..removeAt(oldIndex),
      tabs: List.of(state.tabs)..removeAt(oldIndex),
    ));

    emit(state.copyWith(
      invoices: List.of(state.invoices)..insert(newIndex, invoiceData),
      tabs: List.of(state.tabs)..insert(newIndex, tab),
    ));
    if (state.currentIndex == newIndex) {
      emit(state.copyWith(currentIndex: oldIndex));
    } else if (state.currentIndex == oldIndex) {
      emit(state.copyWith(currentIndex: newIndex));
    }
  }
}
