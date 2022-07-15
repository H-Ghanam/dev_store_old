part of 'invoice_bloc.dart';

@immutable
abstract class InvoiceEvent {}

class OnGetInvoiceEvent extends InvoiceEvent {
  final int invoiceId;

  OnGetInvoiceEvent({required this.invoiceId});
}
