import 'package:equatable/equatable.dart';

class InvoiceItems extends Equatable {
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

  const InvoiceItems({
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
  });

  InvoiceItems copyWith({
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
  }) {
    return InvoiceItems(
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
    );
  }

  factory InvoiceItems.fromJson(Map<String, dynamic> json) {
    return InvoiceItems(
        pk: json['pk'],
        kind: json['kind'],
        id: json['id'],
        storeId: json['store_id'],
        sn: json['sn'],
        itemId: json['item_id'],
        qty: double.parse(json['qty'].toString()),
        amount: double.parse(json['amount'].toString()),
        total: double.parse(json['total'].toString()),
        amountIncTax: double.parse(json['amount_inc_tax'].toString()),
        totalIncTax: double.parse(json['total_inc_tax'].toString()),
        unit: json['unit'],
        uqty1: double.parse(json['uqty1'].toString()),
        uqty2: double.parse(json['uqty2'].toString()),
        unitQtyIn: double.parse(json['unit_qty_in'].toString()),
        unitQtyOut: double.parse(json['unit_qty_out'].toString()),
        unitCost: double.parse(json['unit_cost'].toString()),
        unitPrice: double.parse(json['unit_price'].toString()),
        totalCost: double.parse(json['total_cost'].toString()),
        totalPrice: double.parse(json['total_price'].toString()),
        discount1Per: double.parse(json['discount1_per'].toString()),
        discount1: double.parse(json['discount1'].toString()),
        totalIncDiscount1: double.parse(json['total_inc_discount1'].toString()),
        additions: double.parse(json['additions'].toString()),
        discount2: double.parse(json['discount2'].toString()),
        discounts: double.parse(json['discounts'].toString()),
        netCost: double.parse(json['net_cost'].toString()),
        netPrice: double.parse(json['net_price'].toString()),
        netTotal: double.parse(json['net_total'].toString()),
        qtyIn: double.parse(json['qty_in'].toString()),
        qtyOut: double.parse(json['qty_out'].toString()),
        cost: double.parse(json['cost'].toString()),
        price: double.parse(json['price'].toString()),
        tax1Per: double.parse(json['tax1_per'].toString()),
        tax1: double.parse(json['tax1'].toString()),
        tax2Per: double.parse(json['tax2_per'].toString()),
        tax2: double.parse(json['tax2'].toString()),
        grandTotal: double.parse(json['grand_total'].toString()),
        expenses: double.parse(json['expenses'].toString()),
        realNetCost: double.parse(json['real_net_cost'].toString()),
        realCost: double.parse(json['real_cost'].toString()),
        profit: double.parse(json['profit'].toString()),
        costErrors: double.parse(json['cost_errors'].toString()),
        custom1: json['custom1'],
        custom2: json['custom2'],
        custom3: json['custom3'],
        serials: json['serials'],
        cargo: json['cargo'],
        qtyDelivered: double.parse(json['qty_delivered'].toString()),
        unitContents: double.parse(json['unit_contents'].toString()),
        returnPk: json['return_pk']);
  }

  static List<InvoiceItems> fromJsonArray(List jsonArray) {
    return jsonArray.map((item) {
      return InvoiceItems.fromJson(item);
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
      ];
}
