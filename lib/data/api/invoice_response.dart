import 'dart:convert';

import 'package:dev_store/models/category.dart';
import 'package:dev_store/models/invoice.dart';
import 'package:dev_store/models/invoice_items.dart';
import 'package:dev_store/models/item.dart';
import 'package:dev_store/models/money.dart';
import 'package:dev_store/models/options.dart';
import 'package:equatable/equatable.dart';

InvoiceRespose invoiceResposeFromJson(String str) =>
    InvoiceRespose.fromJson(json.decode(str));

String invoiceResposeToJson(InvoiceRespose data) => json.encode(data.toJson());

class InvoiceRespose extends Equatable {
  const InvoiceRespose({
    required this.resp,
    required this.message,
    required this.invoiceData,
  });

  final bool resp;
  final String message;
  final InvoiceData invoiceData;

  factory InvoiceRespose.fromJson(Map<String, dynamic> json) => InvoiceRespose(
        resp: json["resp"],
        message: json["message"],
        invoiceData: InvoiceData.fromJson(json["invoiceData"]),
      );

  Map<String, dynamic> toJson() => {
        "resp": resp,
        "message": message,
        "invoiceData": invoiceData.toJson(),
      };

  @override
  List<Object?> get props => [resp, message, invoiceData];
}

class InvoiceData extends Equatable {
  final List<Category>? categories;
  final List<Category>? starredCats;
  final List<Item>? starredItems;
  final Invoice invoice;
  final List<InvoiceItems>? invoiceItems;
  final Money? moneyCash;
  final Money? moneyPayment;
  final int? maxId;
  final Options? options;

  const InvoiceData({
    this.categories,
    this.starredCats,
    this.starredItems,
    required this.invoice,
    this.invoiceItems,
    this.moneyCash,
    this.moneyPayment,
    this.maxId,
    this.options,
  });

  factory InvoiceData.fromJson(Map<String, dynamic> json) => InvoiceData(
        categories: Category.fromJsonArray(json["categories"]),
        starredCats: Category.fromJsonArray(json["starredCats"]),
        starredItems: Item.fromJsonArray(json["starredItems"]),
        invoice: json["invoice"] != null
            ? Invoice.fromJson(json["invoice"])
            : const Invoice(id: 0, kind: "SALE", storeId: 1),
        invoiceItems: InvoiceItems.fromJsonArray(json["invoiceItems"]),
        moneyCash: json["moneyCash"] != null
            ? Money.fromJson(json["moneyCash"])
            : null,
        moneyPayment: json["moneyPayment"] != null
            ? Money.fromJson(json["moneyPayment"])
            : const Money(),
        maxId: json["maxId"],
        options: json["options"] != null
            ? Options.fromJson(json["options"])
            : const Options(),
      );

  Map<String, dynamic> toJson() => {
        "categories": categories,
        "starredCats": starredCats,
        "starredItems": starredItems,
        "invoice": invoice,
        "invoiceItems": invoiceItems,
        "moneyCash": moneyCash,
        "moneyPayment": moneyPayment,
        "maxId": maxId,
        "options": options,
      };

  @override
  List<Object?> get props => [
        categories,
        starredCats,
        starredItems,
        invoice,
        invoiceItems,
        moneyCash,
        moneyPayment,
        maxId,
        options
      ];
}
