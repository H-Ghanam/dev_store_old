part of 'invoice_bloc.dart';

enum InvoiceStatus { initial, loaded, failure }

class InvoiceState extends Equatable {
  const InvoiceState({
    this.status = InvoiceStatus.initial,
    this.invoices = const <InvoiceData>[],
    this.tabs = const <Tab>[],
    this.currentIndex = 0,
    this.invoiceOptions,
    this.getOptions = true,
    this.error = '',
  });

  final InvoiceStatus status;
  final List<InvoiceData> invoices;
  final List<Tab> tabs;
  final int currentIndex;
  final InvoiceOptions? invoiceOptions;
  final bool getOptions;
  final dynamic error;

  InvoiceState copyWith(
      {InvoiceStatus? status,
      List<InvoiceData>? invoices,
      List<Tab>? tabs,
      int? currentIndex,
      InvoiceOptions? invoiceOptions,
      bool? getOptions,
      dynamic error}) {
    return InvoiceState(
      status: status ?? this.status,
      invoices: invoices ?? this.invoices,
      tabs: tabs ?? this.tabs,
      currentIndex: currentIndex ?? this.currentIndex,
      getOptions: getOptions ?? this.getOptions,
      invoiceOptions: invoiceOptions ?? this.invoiceOptions,
      error: error ?? this.error,
    );
  }

  @override
  String toString() {
    return '''PostState { status: $status, invoices: ${invoices.length},tabs: ${invoices.length},currentIndex: $currentIndex, getOptions: $getOptions , error: $error }''';
  }

  @override
  List<Object?> get props =>
      [status, invoices, tabs, currentIndex, getOptions, error];
}
