import 'package:equatable/equatable.dart';

class InvoiceItems extends Equatable {
  final num? pk;
  final num id;
  final String kind;
  final num storeId;
  final num? sn;
  final num? itemId;
  final num? qty;
  final num? amount;
  final num? total;
  final num? amountIncTax;
  final num? totalIncTax;
  final String? unit;
  final num? uqty1;
  final num? uqty2;
  final num? unitQtyIn;
  final num? unitQtyOut;
  final num? unitCost;
  final num? unitPrice;
  final num? totalCost;
  final num? totalPrice;
  final num? discount1Per;
  final num? discount1;
  final num? totalIncDiscount1;
  final num? additions;
  final num? discount2;
  final num? discounts;
  final num? netCost;
  final num? netPrice;
  final num? netTotal;
  final num? qtyIn;
  final num? qtyOut;
  final num? cost;
  final num? price;
  final num? tax1Per;
  final num? tax1;
  final num? tax2Per;
  final num? tax2;
  final num? grandTotal;
  final num? expenses;
  final num? realNetCost;
  final num? realCost;
  final num? profit;
  final num? costErrors;
  final String? custom1;
  final String? custom2;
  final String? custom3;
  final String? serials;
  final String? cargo;
  final num? qtyDelivered;
  final num? unitContents;
  final num? returnPk;
  final String? title;
  final String? code1;
  final String? code2;
  final String? barcode;
  final String? taxType;
  final num? priceIncludeTax1;
  final String? category1;
  final String? category2;
  final String? category3;
  final String? category4;
  final String? category5;
  final String? category6;
  final num? price1;
  final num? price2;
  final num? price3;
  final num? price4;
  final num? priceMin;
  final String? photo;
  final String? more;
  final num? service;
  final num? qtyAvailable;

  const InvoiceItems(
      {this.pk,
      required this.id,
      required this.kind,
      required this.storeId,
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
      this.qtyAvailable});

  factory InvoiceItems.fromJson(Map<String, dynamic> json) {
    return InvoiceItems(
        pk: json['pk'],
        kind: json['kind'],
        id: json['id'],
        storeId: json['store_id'],
        sn: json['sn'],
        itemId: json['item_id'],
        qty: json['qty'],
        amount: json['amount'],
        total: json['total'],
        amountIncTax: json['amount_inc_tax'],
        totalIncTax: json['total_inc_tax'],
        unit: json['unit'],
        uqty1: json['uqty1'],
        uqty2: json['uqty2'],
        unitQtyIn: json['unit_qty_in'],
        unitQtyOut: json['unit_qty_out'],
        unitCost: json['unit_cost'],
        unitPrice: json['unit_price'],
        totalCost: json['total_cost'],
        totalPrice: json['total_price'],
        discount1Per: json['discount1_per'],
        discount1: json['discount1'],
        totalIncDiscount1: json['total_inc_discount1'],
        additions: json['additions'],
        discount2: json['discount2'],
        discounts: json['discounts'],
        netCost: json['net_cost'],
        netPrice: json['net_price'],
        netTotal: json['net_total'],
        qtyIn: json['qty_in'],
        qtyOut: json['qty_out'],
        cost: json['cost'],
        price: json['price'],
        tax1Per: json['tax1_per'],
        tax1: json['tax1'],
        tax2Per: json['tax2_per'],
        tax2: json['tax2'],
        grandTotal: json['grand_total'],
        expenses: json['expenses'],
        realNetCost: json['real_net_cost'],
        realCost: json['real_cost'],
        profit: json['profit'],
        costErrors: json['cost_errors'],
        custom1: json['custom1'],
        custom2: json['custom2'],
        custom3: json['custom3'],
        serials: json['serials'],
        cargo: json['cargo'],
        qtyDelivered: json['qty_delivered'],
        unitContents: json['unit_contents'],
        returnPk: json['returnPk'],
        title: json['title'],
        code1: json['code1'],
        code2: json['code2'],
        barcode: json['barcode'],
        taxType: json['taxType'],
        priceIncludeTax1: json['priceIncludeTax1'],
        category1: json['category1'],
        category2: json['category2'],
        category3: json['category3'],
        category4: json['category4'],
        category5: json['category5'],
        category6: json['category6'],
        price1: json['price1'],
        price2: json['price2'],
        price3: json['price3'],
        price4: json['price4'],
        priceMin: json['priceMin'],
        photo: json['photo'],
        more: json['more'],
        service: json['service'],
        qtyAvailable: json['qtyAvailable']);
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
    data['returnPk'] = returnPk;
    data['title'] = title;
    data['code1'] = code1;
    data['code2'] = code2;
    data['barcode'] = barcode;
    data['taxType'] = taxType;
    data['priceIncludeTax1'] = priceIncludeTax1;
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
    data['priceMin'] = priceMin;
    data['photo'] = photo;
    data['more'] = more;
    data['service'] = service;
    data['qtyAvailable'] = qtyAvailable;
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
