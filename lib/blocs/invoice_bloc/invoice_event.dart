part of 'invoice_bloc.dart';

@immutable
abstract class InvoiceEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class OnGetInvoiceEvent extends InvoiceEvent {
  final int invoiceId;
  final String kind;
  final int storeId;
  final Size size;
  final AppTheme appTheme;

  OnGetInvoiceEvent(
      {required this.size,
      required this.appTheme,
      required this.invoiceId,
      required this.kind,
      required this.storeId});
}

class OnRemoveTabEvent extends InvoiceEvent {
  final Tab tab;

  OnRemoveTabEvent({required this.tab});
}

class OnChangeTabEvent extends InvoiceEvent {
  final int currentIndex;

  OnChangeTabEvent({required this.currentIndex});
}

class OnReorderTabsEvent extends InvoiceEvent {
  final int oldIndex;
  final int newIndex;

  OnReorderTabsEvent({required this.oldIndex, required this.newIndex});
}

class OnEditEvent extends InvoiceEvent {
  final InvoiceData invoiceData;
  final Invoice? invoice;
  final List<InvoiceItemsResponse>? invoiceItemsResponses;
  final Money? moneyCash;
  final Money? moneyPayment;

  OnEditEvent({
    required this.invoiceData,
    this.invoice,
    this.invoiceItemsResponses,
    this.moneyCash,
    this.moneyPayment,
  });
}
