import 'package:dev_store/data/api/invoice_response.dart';
import 'package:equatable/equatable.dart';
import 'package:fluent_ui/fluent_ui.dart';

class InvoiceTab extends Equatable {
  final Tab tab;
  final InvoiceData invoiceData;

  const InvoiceTab({required this.tab, required this.invoiceData});

  @override
  List<Object?> get props => [tab, invoiceData];
}
