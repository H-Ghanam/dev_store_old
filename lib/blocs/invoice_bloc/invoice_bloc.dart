import 'dart:core';

import 'package:dev_store/data/api/invoice_items_response.dart';
import 'package:dev_store/data/api/invoice_response.dart';
import 'package:dev_store/models/invoice.dart';
import 'package:dev_store/models/invoice_options.dart';
import 'package:dev_store/models/money.dart';
import 'package:dev_store/data/repositories/invoice_repository.dart';
import 'package:dev_store/theme.dart';
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
    on<OnEditEvent>(_editInvoiceData);
  }

  Future<void> _getInvoices(
      OnGetInvoiceEvent event, Emitter<InvoiceState> emit) async {
    try {
      final invoiceResponse = await _invoiceRepository.getInvoiceResponse(
          event.invoiceId, event.kind, event.storeId, state.getOptions);

      if (invoiceResponse.resp) {
        final invoiceData = invoiceResponse.invoiceData;
        final options = invoiceResponse.invoiceData.invoiceOptions;
        final invoice = invoiceData.invoice;
        var kind = "";

        switch (invoice.kind) {
          case "ADJUST":
            kind = "تسوية";
            break;
          case "INVENT":
            kind = "";
            break;
          case "OPEN":
            kind = "";
            break;
          case "PURCHASE":
            kind = "شراء";
            break;
          case "RETURNPUR":
            kind = "مرتجع شراء";
            break;
          case "RETURNSALE":
            kind = "مرتجع بيع";
            break;
          case "SALE":
            kind = "بيع";
            break;
          case "SALEQUOTE":
            kind = "عرض أسعار";
            break;
        }

        String _text = "$kind ";

        if (invoice.id >= 900000) {
          _text += " |  جديد";
        } else {
          _text += " |  ${invoice.id}";
        }

        if (invoice.accountId != null) {
          _text += " |  ${invoice.accountId}";
        } else {
          _text += "   ";
        }

        late Tab tab;

        tab = Tab(
            closeIcon: !invoiceData.isSaved
                ? FluentIcons.status_circle_sync
                : FluentIcons.clear,
            text: Text(_text),
            onClosed: () {
              add(OnRemoveTabEvent(tab: tab));
            });
        return emit(state.copyWith(
          status: InvoiceStatus.loaded,
          invoices: List.of(state.invoices)..add(invoiceData),
          tabs: List.of(state.tabs)..add(tab),
          currentIndex: state.tabs.isNotEmpty ? state.tabs.length : 0,
          invoiceOptions: state.invoiceOptions ?? options,
          // getOptions: false,
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

  Future<void> _editInvoiceData(
      OnEditEvent event, Emitter<InvoiceState> emit) async {
    event.invoiceData;
    event.invoice;
    event.invoiceItemsResponses;
    event.moneyCash;
    event.moneyPayment;

    List<InvoiceData> editedInvoices = List.of(state.invoices);
    InvoiceData invoiceData = state.invoices.firstWhere((invoiceData) =>
        invoiceData.invoice.id == event.invoiceData.invoice.id);

    int invoiceDataIndex =
        editedInvoices.indexWhere((element) => element == invoiceData);
    InvoiceData editedInvoiceData = editedInvoices.removeAt(invoiceDataIndex);

    if (event.invoice != null) {
      editedInvoiceData = editedInvoiceData.copyWith(invoice: event.invoice);
    } else if (event.invoiceItemsResponses != null) {
      editedInvoiceData = editedInvoiceData.copyWith(
          invoiceItemsResponses: event.invoiceItemsResponses);
    } else if (event.moneyCash != null) {
      editedInvoiceData =
          editedInvoiceData.copyWith(moneyCash: event.moneyCash);
    } else if (event.moneyPayment != null) {
      editedInvoiceData =
          editedInvoiceData.copyWith(moneyPayment: event.moneyPayment);
    }
    editedInvoiceData = editedInvoiceData.copyWith(isSaved: false);

    editedInvoices = editedInvoices
      ..insert(invoiceDataIndex, editedInvoiceData);
    emit(state.copyWith(invoices: editedInvoices));
  }
}
