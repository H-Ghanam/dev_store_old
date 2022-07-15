part of 'invoice_bloc.dart';

@immutable
abstract class InvoiceState {
  final InvoiceRespose? invoiceRespose;

  const InvoiceState({this.invoiceRespose});
}

class InvoiceInitial extends InvoiceState {}

class InvoiceLoadingState extends InvoiceState {}

class InvoiceSuccessState extends InvoiceState {
  // ignore: annotate_overrides, overridden_fields
  final InvoiceRespose invoiceRespose;

  const InvoiceSuccessState({required this.invoiceRespose})
      : super(invoiceRespose: invoiceRespose);
}

class InvoiceErrorState extends InvoiceState {
  // ignore: prefer_typing_uninitialized_variables
  final error;
  const InvoiceErrorState(this.error);
}
