import 'dart:convert';
import 'dart:math';

import 'package:dev_store/data/api/invoice_items_response.dart';
import 'package:dev_store/models/category.dart';
import 'package:dev_store/models/invoice.dart';
import 'package:dev_store/models/invoice_options.dart';
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
  final bool isSaved;
  final List<Category>? categories;
  final List<Category>? starredCats;
  final List<Item>? starredItems;
  final Invoice invoice;
  final List<InvoiceItemsResponse>? invoiceItemsResponses;
  final Money? moneyCash;
  final Money? moneyPayment;
  final int? maxId;
  final InvoiceOptions? invoiceOptions;

  const InvoiceData({
    this.isSaved = true,
    this.categories,
    this.starredCats,
    this.starredItems,
    required this.invoice,
    this.invoiceItemsResponses,
    this.moneyCash,
    this.moneyPayment,
    this.maxId,
    this.invoiceOptions,
  });

  InvoiceData copyWith({
    bool? isSaved,
    List<Category>? categories,
    List<Category>? starredCats,
    List<Item>? starredItems,
    Invoice? invoice,
    List<InvoiceItemsResponse>? invoiceItemsResponses,
    Money? moneyCash,
    Money? moneyPayment,
    int? maxId,
    InvoiceOptions? invoiceOptions,
  }) {
    return InvoiceData(
      isSaved: isSaved ?? this.isSaved,
      categories: categories ?? this.categories,
      starredCats: starredCats ?? this.starredCats,
      starredItems: starredItems ?? this.starredItems,
      invoice: invoice ?? this.invoice,
      invoiceItemsResponses:
          invoiceItemsResponses ?? this.invoiceItemsResponses,
      moneyCash: moneyCash ?? this.moneyCash,
      moneyPayment: moneyPayment ?? this.moneyPayment,
      maxId: maxId ?? this.maxId,
      invoiceOptions: invoiceOptions ?? this.invoiceOptions,
    );
  }

  factory InvoiceData.fromJson(Map<String, dynamic> json) => InvoiceData(
        categories: Category.fromJsonArray(json["categories"]),
        starredCats: Category.fromJsonArray(json["starredCats"]),
        starredItems: Item.fromJsonArray(json["starredItems"]),
        invoice: json["invoice"] != null
            ? Invoice.fromJson(json["invoice"])
            : Invoice.fromJson({
                "id": 900000 + Random().nextInt(90000),
                "kind": "SALE",
                "store_id": 1
              }),
        invoiceItemsResponses:
            InvoiceItemsResponse.fromJsonArray(json["invoiceItems"]),
        moneyCash: json["moneyCash"] != null
            ? Money.fromJson(json["moneyCash"])
            : null,
        moneyPayment: json["moneyPayment"] != null
            ? Money.fromJson(json["moneyPayment"])
            : null,
        maxId: json["maxId"],
        invoiceOptions: json["options"] != null
            ? InvoiceOptions.fromJson(json["options"])
            : null,
      );

  Map<String, dynamic> toJson() => {
        "isSaved": isSaved,
        "categories": categories,
        "starredCats": starredCats,
        "starredItems": starredItems,
        "invoice": invoice,
        "invoiceItems": invoiceItemsResponses,
        "moneyCash": moneyCash,
        "moneyPayment": moneyPayment,
        "maxId": maxId,
        "options": invoiceOptions,
      };

  @override
  List<Object?> get props => [
        isSaved,
        categories,
        starredCats,
        starredItems,
        invoice,
        invoiceItemsResponses,
        moneyCash,
        moneyPayment,
        maxId,
        invoiceOptions
      ];
}
