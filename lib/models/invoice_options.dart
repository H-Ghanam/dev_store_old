import 'package:equatable/equatable.dart';

class InvoiceOptions extends Equatable {
  final List<String>? additionType;
  final List<String>? expenseType;
  final List<String>? invoiceStatus;
  final List<String>? shippedby;
  final List<String>? chequeBank;

  const InvoiceOptions({
    this.additionType,
    this.expenseType,
    this.invoiceStatus,
    this.shippedby,
    this.chequeBank,
  });

  factory InvoiceOptions.fromJson(Map<String, dynamic> json) => InvoiceOptions(
        additionType:
            List.of(json['additionType']).map((e) => e.toString()).toList(),
        expenseType:
            List.of(json['expenseType']).map((e) => e.toString()).toList(),
        invoiceStatus:
            List.of(json['invoiceStatus']).map((e) => e.toString()).toList(),
        shippedby: List.of(json['shippedby']).map((e) => e.toString()).toList(),
        chequeBank:
            List.of(json['chequeBank']).map((e) => e.toString()).toList(),
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['additionType'] = additionType;
    data['expenseType'] = expenseType;
    data['invoiceStatus'] = invoiceStatus;
    data['shippedby'] = shippedby;
    data['chequeBank'] = chequeBank;

    return data;
  }

  @override
  List<Object?> get props => [
        additionType,
        expenseType,
        invoiceStatus,
        shippedby,
        chequeBank,
      ];
}
