import 'dart:convert';

import 'package:dev_store/Models/invoice.dart';

InvoiceRespose invoiceResposeFromJson(String str) =>
    InvoiceRespose.fromJson(json.decode(str));

String invoiceResposeToJson(InvoiceRespose data) => json.encode(data.toJson());

class InvoiceRespose {
  InvoiceRespose({
    required this.resp,
    required this.message,
    required this.invoice,
  });

  bool resp;
  String message;
  Invoices invoice;

  factory InvoiceRespose.fromJson(Map<String, dynamic> json) => InvoiceRespose(
        resp: json["resp"],
        message: json["message"],
        invoice: Invoices.fromJson(json["invoice"]),
      );

  Map<String, dynamic> toJson() => {
        "resp": resp,
        "message": message,
        "invoice": invoice.toJson(),
      };
}

class Invoices {
  Invoice? details;

  Invoices({this.details});

  factory Invoices.fromJson(Map<String, dynamic> json) => Invoices(
        details: Invoice.fromJson(json["details"]),
      );

  Map<String, dynamic> toJson() => {"details": details};
}
