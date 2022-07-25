import 'dart:convert';
import 'package:equatable/equatable.dart';

InvoiceItemsResponse invoiceItemsResponseFromJson(String str) =>
    InvoiceItemsResponse.fromJson(json.decode(str));

String invoiceItemsResponseToJson(InvoiceItemsResponse data) =>
    json.encode(data.toJson());

class InvoiceItemsResponse extends Equatable {
  final int? pk;
  final String? kind;
  final int? id;
  final int? storeId;
  final int? sn;
  final int? itemId;
  final double? qty;
  final double? amount;
  final double? total;
  final double? amountIncTax;
  final double? totalIncTax;
  final String? unit;
  final double? uqty1;
  final double? uqty2;
  final double? unitQtyIn;
  final double? unitQtyOut;
  final double? unitCost;
  final double? unitPrice;
  final double? totalCost;
  final double? totalPrice;
  final double? discount1Per;
  final double? discount1;
  final double? totalIncDiscount1;
  final double? additions;
  final double? discount2;
  final double? discounts;
  final double? netCost;
  final double? netPrice;
  final double? netTotal;
  final double? qtyIn;
  final double? qtyOut;
  final double? cost;
  final double? price;
  final double? tax1Per;
  final double? tax1;
  final double? tax2Per;
  final double? tax2;
  final double? grandTotal;
  final double? expenses;
  final double? realNetCost;
  final double? realCost;
  final double? profit;
  final double? costErrors;
  final String? custom1;
  final String? custom2;
  final String? custom3;
  final String? serials;
  final String? cargo;
  final double? qtyDelivered;
  final double? unitContents;
  final int? returnPk;
  final String? title;
  final String? code1;
  final String? code2;
  final String? barcode;
  final String? taxType;
  final int? priceIncludeTax1;
  final String? category1;
  final String? category2;
  final String? category3;
  final String? category4;
  final String? category5;
  final String? category6;
  final double? price1;
  final double? price2;
  final double? price3;
  final double? price4;
  final double? priceMin;
  final String? photo;
  final String? more;
  final int? service;
  final double? qtyAvailable;

  const InvoiceItemsResponse({
    this.pk,
    this.kind,
    this.id,
    this.storeId,
    this.sn,
    this.itemId,
    this.qty,
    this.amount,
    this.total,
    this.amountIncTax,
    this.totalIncTax,
    this.unit,
    this.uqty1,
    this.uqty2,
    this.unitQtyIn,
    this.unitQtyOut,
    this.unitCost,
    this.unitPrice,
    this.totalCost,
    this.totalPrice,
    this.discount1Per,
    this.discount1,
    this.totalIncDiscount1,
    this.additions,
    this.discount2,
    this.discounts,
    this.netCost,
    this.netPrice,
    this.netTotal,
    this.qtyIn,
    this.qtyOut,
    this.cost,
    this.price,
    this.tax1Per,
    this.tax1,
    this.tax2Per,
    this.tax2,
    this.grandTotal,
    this.expenses,
    this.realNetCost,
    this.realCost,
    this.profit,
    this.costErrors,
    this.custom1,
    this.custom2,
    this.custom3,
    this.serials,
    this.cargo,
    this.qtyDelivered,
    this.unitContents,
    this.returnPk,
    this.title,
    this.code1,
    this.code2,
    this.barcode,
    this.taxType,
    this.priceIncludeTax1,
    this.category1,
    this.category2,
    this.category3,
    this.category4,
    this.category5,
    this.category6,
    this.price1,
    this.price2,
    this.price3,
    this.price4,
    this.priceMin,
    this.photo,
    this.more,
    this.service,
    this.qtyAvailable,
  });

  InvoiceItemsResponse copyWith({
    int? pk,
    String? kind,
    int? id,
    int? storeId,
    int? sn,
    int? itemId,
    double? qty,
    double? amount,
    double? total,
    double? amountIncTax,
    double? totalIncTax,
    String? unit,
    double? uqty1,
    double? uqty2,
    double? unitQtyIn,
    double? unitQtyOut,
    double? unitCost,
    double? unitPrice,
    double? totalCost,
    double? totalPrice,
    double? discount1Per,
    double? discount1,
    double? totalIncDiscount1,
    double? additions,
    double? discount2,
    double? discounts,
    double? netCost,
    double? netPrice,
    double? netTotal,
    double? qtyIn,
    double? qtyOut,
    double? cost,
    double? price,
    double? tax1Per,
    double? tax1,
    double? tax2Per,
    double? tax2,
    double? grandTotal,
    double? expenses,
    double? realNetCost,
    double? realCost,
    double? profit,
    double? costErrors,
    String? custom1,
    String? custom2,
    String? custom3,
    String? serials,
    String? cargo,
    double? qtyDelivered,
    double? unitContents,
    int? returnPk,
    String? title,
    String? code1,
    String? code2,
    String? barcode,
    String? taxType,
    int? priceIncludeTax1,
    String? category1,
    String? category2,
    String? category3,
    String? category4,
    String? category5,
    String? category6,
    double? price1,
    double? price2,
    double? price3,
    double? price4,
    double? priceMin,
    String? photo,
    String? more,
    int? service,
    double? qtyAvailable,
  }) {
    return InvoiceItemsResponse(
      pk: pk ?? this.pk,
      kind: kind ?? this.kind,
      id: id ?? this.id,
      storeId: storeId ?? this.storeId,
      sn: sn ?? this.sn,
      itemId: itemId ?? this.itemId,
      qty: qty ?? this.qty,
      amount: amount ?? this.amount,
      total: total ?? this.total,
      amountIncTax: amountIncTax ?? this.amountIncTax,
      totalIncTax: totalIncTax ?? this.totalIncTax,
      unit: unit ?? this.unit,
      uqty1: uqty1 ?? this.uqty1,
      uqty2: uqty2 ?? this.uqty2,
      unitQtyIn: unitQtyIn ?? this.unitQtyIn,
      unitQtyOut: unitQtyOut ?? this.unitQtyOut,
      unitCost: unitCost ?? this.unitCost,
      unitPrice: unitPrice ?? this.unitPrice,
      totalCost: totalCost ?? this.totalCost,
      totalPrice: totalPrice ?? this.totalPrice,
      discount1Per: discount1Per ?? this.discount1Per,
      discount1: discount1 ?? this.discount1,
      totalIncDiscount1: totalIncDiscount1 ?? this.totalIncDiscount1,
      additions: additions ?? this.additions,
      discount2: discount2 ?? this.discount2,
      discounts: discounts ?? this.discounts,
      netCost: netCost ?? this.netCost,
      netPrice: netPrice ?? this.netPrice,
      netTotal: netTotal ?? this.netTotal,
      qtyIn: qtyIn ?? this.qtyIn,
      qtyOut: qtyOut ?? this.qtyOut,
      cost: cost ?? this.cost,
      price: price ?? this.price,
      tax1Per: tax1Per ?? this.tax1Per,
      tax1: tax1 ?? this.tax1,
      tax2Per: tax2Per ?? this.tax2Per,
      tax2: tax2 ?? this.tax2,
      grandTotal: grandTotal ?? this.grandTotal,
      expenses: expenses ?? this.expenses,
      realNetCost: realNetCost ?? this.realNetCost,
      realCost: realCost ?? this.realCost,
      profit: profit ?? this.profit,
      costErrors: costErrors ?? this.costErrors,
      custom1: custom1 ?? this.custom1,
      custom2: custom2 ?? this.custom2,
      custom3: custom3 ?? this.custom3,
      serials: serials ?? this.serials,
      cargo: cargo ?? this.cargo,
      qtyDelivered: qtyDelivered ?? this.qtyDelivered,
      unitContents: unitContents ?? this.unitContents,
      returnPk: returnPk ?? this.returnPk,
      title: title ?? this.title,
      code1: code1 ?? this.code1,
      code2: code2 ?? this.code2,
      barcode: barcode ?? this.barcode,
      taxType: taxType ?? this.taxType,
      priceIncludeTax1: priceIncludeTax1 ?? this.priceIncludeTax1,
      category1: category1 ?? this.category1,
      category2: category2 ?? this.category2,
      category3: category3 ?? this.category3,
      category4: category4 ?? this.category4,
      category5: category5 ?? this.category5,
      category6: category6 ?? this.category6,
      price1: price1 ?? this.price1,
      price2: price2 ?? this.price2,
      price3: price3 ?? this.price3,
      price4: price4 ?? this.price4,
      priceMin: priceMin ?? this.priceMin,
      photo: photo ?? this.photo,
      more: more ?? this.more,
      service: service ?? this.service,
      qtyAvailable: qtyAvailable ?? this.qtyAvailable,
    );
  }

  factory InvoiceItemsResponse.fromJson(Map<String, dynamic> json) =>
      InvoiceItemsResponse(
        pk: json['pk'], // int
        kind: json['kind'], // String
        id: json['id'], // int
        storeId: json['store_id'], // int
        sn: json['sn'], // int
        itemId: json['item_id'], // int
        qty: double.parse(json['qty'].toString()), // double
        amount: double.parse(json['amount'].toString()), // double
        total: double.parse(json['total'].toString()), // double
        amountIncTax: double.parse(json['amount_inc_tax'].toString()), // double
        totalIncTax: double.parse(json['total_inc_tax'].toString()), // double
        unit: json['unit'], // String
        uqty1: double.parse(json['uqty1'].toString()), // double
        uqty2: double.parse(json['uqty2'].toString()), // double
        unitQtyIn: double.parse(json['unit_qty_in'].toString()), // double
        unitQtyOut: double.parse(json['unit_qty_out'].toString()), // double
        unitCost: double.parse(json['unit_cost'].toString()), // double
        unitPrice: double.parse(json['unit_price'].toString()), // double
        totalCost: double.parse(json['total_cost'].toString()), // double
        totalPrice: double.parse(json['total_price'].toString()), // double
        discount1Per: double.parse(json['discount1_per'].toString()), // double
        discount1: double.parse(json['discount1'].toString()), // double
        totalIncDiscount1:
            double.parse(json['total_inc_discount1'].toString()), // double
        additions: double.parse(json['additions'].toString()), // double
        discount2: double.parse(json['discount2'].toString()), // double
        discounts: double.parse(json['discounts'].toString()), // double
        netCost: double.parse(json['net_cost'].toString()), // double
        netPrice: double.parse(json['net_price'].toString()), // double
        netTotal: double.parse(json['net_total'].toString()), // double
        qtyIn: double.parse(json['qty_in'].toString()), // double
        qtyOut: double.parse(json['qty_out'].toString()), // double
        cost: double.parse(json['cost'].toString()), // double
        price: double.parse(json['price'].toString()), // double
        tax1Per: double.parse(json['tax1_per'].toString()), // double
        tax1: double.parse(json['tax1'].toString()), // double
        tax2Per: double.parse(json['tax2_per'].toString()), // double
        tax2: double.parse(json['tax2'].toString()), // double
        grandTotal: double.parse(json['grand_total'].toString()), // double
        expenses: double.parse(json['expenses'].toString()), // double
        realNetCost: double.parse(json['real_net_cost'].toString()), // double
        realCost: double.parse(json['real_cost'].toString()), // double
        profit: double.parse(json['profit'].toString()), // double
        costErrors: double.parse(json['cost_errors'].toString()), // double
        custom1: json['custom1'], // String
        custom2: json['custom2'], // String
        custom3: json['custom3'], // String
        serials: json['serials'], // String
        cargo: json['cargo'], // String
        qtyDelivered: double.parse(json['qty_delivered'].toString()), // double
        unitContents: double.parse(json['unit_contents'].toString()), // double
        returnPk: json['return_pk'], // int
        title: json['title'], // String
        code1: json['code1'], // String
        code2: json['code2'], // String
        barcode: json['barcode'], // String
        taxType: json['tax_type'], // String
        priceIncludeTax1: json['price_include_tax1'], // int
        category1: json['category1'], // String
        category2: json['category2'], // String
        category3: json['category3'], // String
        category4: json['category4'], // String
        category5: json['category5'], // String
        category6: json['category6'], // String
        price1: double.parse(json['price1'].toString()), // double
        price2: double.parse(json['price2'].toString()), // double
        price3: double.parse(json['price3'].toString()), // double
        price4: double.parse(json['price4'].toString()), // double
        priceMin: double.parse(json['price_min'].toString()), // double
        photo: json['photo'], // String
        more: json['more'], // String
        service: json['service'], // int
        qtyAvailable: double.parse(json['qty_available'].toString()), // double
      );

  static List<InvoiceItemsResponse> fromJsonArray(List jsonArray) {
    return jsonArray.map((item) {
      return InvoiceItemsResponse.fromJson(item);
    }).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['pk'] = pk;
    data['kind'] = kind;
    data['id'] = id;
    data['store_id'] = storeId;
    data['sn'] = sn;
    data['item_id'] = itemId;
    data['qty'] = qty;
    data['amount'] = amount;
    data['total'] = total;
    data['amount_inc_tax'] = amountIncTax;
    data['total_inc_tax'] = totalIncTax;
    data['unit'] = unit;
    data['uqty1'] = uqty1;
    data['uqty2'] = uqty2;
    data['unit_qty_in'] = unitQtyIn;
    data['unit_qty_out'] = unitQtyOut;
    data['unit_cost'] = unitCost;
    data['unit_price'] = unitPrice;
    data['total_cost'] = totalCost;
    data['total_price'] = totalPrice;
    data['discount1_per'] = discount1Per;
    data['discount1'] = discount1;
    data['total_inc_discount1'] = totalIncDiscount1;
    data['additions'] = additions;
    data['discount2'] = discount2;
    data['discounts'] = discounts;
    data['net_cost'] = netCost;
    data['net_price'] = netPrice;
    data['net_total'] = netTotal;
    data['qty_in'] = qtyIn;
    data['qty_out'] = qtyOut;
    data['cost'] = cost;
    data['price'] = price;
    data['tax1_per'] = tax1Per;
    data['tax1'] = tax1;
    data['tax2_per'] = tax2Per;
    data['tax2'] = tax2;
    data['grand_total'] = grandTotal;
    data['expenses'] = expenses;
    data['real_net_cost'] = realNetCost;
    data['real_cost'] = realCost;
    data['profit'] = profit;
    data['cost_errors'] = costErrors;
    data['custom1'] = custom1;
    data['custom2'] = custom2;
    data['custom3'] = custom3;
    data['serials'] = serials;
    data['cargo'] = cargo;
    data['qty_delivered'] = qtyDelivered;
    data['unit_contents'] = unitContents;
    data['return_pk'] = returnPk;
    data['title'] = title;
    data['code1'] = code1;
    data['code2'] = code2;
    data['barcode'] = barcode;
    data['tax_type'] = taxType;
    data['price_include_tax1'] = priceIncludeTax1;
    data['category1'] = category1;
    data['category2'] = category2;
    data['category3'] = category3;
    data['category4'] = category4;
    data['category5'] = category5;
    data['category6'] = category6;
    data['price1'] = price1;
    data['price2'] = price2;
    data['price3'] = price3;
    data['price4'] = price4;
    data['price_min'] = priceMin;
    data['photo'] = photo;
    data['more'] = more;
    data['service'] = service;
    data['qty_available'] = qtyAvailable;

    return data;
  }

  @override
  List<Object?> get props => [
        pk,
        kind,
        id,
        storeId,
        sn,
        itemId,
        qty,
        amount,
        total,
        amountIncTax,
        totalIncTax,
        unit,
        uqty1,
        uqty2,
        unitQtyIn,
        unitQtyOut,
        unitCost,
        unitPrice,
        totalCost,
        totalPrice,
        discount1Per,
        discount1,
        totalIncDiscount1,
        additions,
        discount2,
        discounts,
        netCost,
        netPrice,
        netTotal,
        qtyIn,
        qtyOut,
        cost,
        price,
        tax1Per,
        tax1,
        tax2Per,
        tax2,
        grandTotal,
        expenses,
        realNetCost,
        realCost,
        profit,
        costErrors,
        custom1,
        custom2,
        custom3,
        serials,
        cargo,
        qtyDelivered,
        unitContents,
        returnPk,
        title,
        code1,
        code2,
        barcode,
        taxType,
        priceIncludeTax1,
        category1,
        category2,
        category3,
        category4,
        category5,
        category6,
        price1,
        price2,
        price3,
        price4,
        priceMin,
        photo,
        more,
        service,
        qtyAvailable,
      ];
}
