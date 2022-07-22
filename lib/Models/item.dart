import 'package:equatable/equatable.dart';

class Item extends Equatable {
  final num? id;
  final String? title;
  final String? code1;
  final String? code2;
  final String? barcode;
  final String? barcodes;
  final num? price1;
  final num? price2;
  final num? price3;
  final num? price4;
  final num? priceMin;
  final String? category1;
  final String? category2;
  final String? category3;
  final String? category4;
  final String? category5;
  final String? category6;
  final String? unit;
  final num? service;
  final num? avgCost;
  final num? lastCost;
  final num? lastNetCost;
  final String? lastPurchased;
  final num? qty;
  final num? reorderQty;
  final num? starred;
  final num? discountPer1;
  final String? taxType;
  final num? priceIncludeTax1;
  final num? dead;
  final String? photo;
  final String? more;

  const Item(
      {this.id,
      this.title,
      this.code1,
      this.code2,
      this.barcode,
      this.barcodes,
      this.price1,
      this.price2,
      this.price3,
      this.price4,
      this.priceMin,
      this.category1,
      this.category2,
      this.category3,
      this.category4,
      this.category5,
      this.category6,
      this.unit,
      this.service,
      this.avgCost,
      this.lastCost,
      this.lastNetCost,
      this.lastPurchased,
      this.qty,
      this.reorderQty,
      this.starred,
      this.discountPer1,
      this.taxType,
      this.priceIncludeTax1,
      this.dead,
      this.photo,
      this.more});

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
        id: json['id'],
        title: json['title'],
        code1: json['code1'],
        code2: json['code2'],
        barcode: json['barcode'],
        barcodes: json['barcodes'],
        price1: json['price1'],
        price2: json['price2'],
        price3: json['price3'],
        price4: json['price4'],
        priceMin: json['price_min'],
        category1: json['category1'],
        category2: json['category2'],
        category3: json['category3'],
        category4: json['category4'],
        category5: json['category5'],
        category6: json['category6'],
        unit: json['unit'],
        service: json['service'],
        avgCost: json['avg_cost'],
        lastCost: json['last_cost'],
        lastNetCost: json['last_net_cost'],
        lastPurchased: json['last_purchased'],
        qty: json['qty'],
        reorderQty: json['reorder_qty'],
        starred: json['starred'],
        discountPer1: json['discount_per1'],
        taxType: json['tax_type'],
        priceIncludeTax1: json['price_include_tax1'],
        dead: json['dead'],
        photo: json['photo'],
        more: json['more']);
  }

  static List<Item> fromJsonArray(List jsonArray) {
    return jsonArray.map((item) {
      return Item.fromJson(item);
    }).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['code1'] = code1;
    data['code2'] = code2;
    data['barcode'] = barcode;
    data['barcodes'] = barcodes;
    data['price1'] = price1;
    data['price2'] = price2;
    data['price3'] = price3;
    data['price4'] = price4;
    data['price_min'] = priceMin;
    data['category1'] = category1;
    data['category2'] = category2;
    data['category3'] = category3;
    data['category4'] = category4;
    data['category5'] = category5;
    data['category6'] = category6;
    data['unit'] = unit;
    data['service'] = service;
    data['avg_cost'] = avgCost;
    data['last_cost'] = lastCost;
    data['last_net_cost'] = lastNetCost;
    data['last_purchased'] = lastPurchased;
    data['qty'] = qty;
    data['reorder_qty'] = reorderQty;
    data['starred'] = starred;
    data['discount_per1'] = discountPer1;
    data['tax_type'] = taxType;
    data['price_include_tax1'] = priceIncludeTax1;
    data['dead'] = dead;
    data['photo'] = photo;
    data['more'] = more;
    return data;
  }

  @override
  List<Object?> get props => [
        id,
        title,
        code1,
        code2,
        barcode,
        barcodes,
        price1,
        price2,
        price3,
        price4,
        priceMin,
        category1,
        category2,
        category3,
        category4,
        category5,
        category6,
        unit,
        service,
        avgCost,
        lastCost,
        lastNetCost,
        lastPurchased,
        qty,
        reorderQty,
        starred,
        discountPer1,
        taxType,
        priceIncludeTax1,
        dead,
        photo,
        more
      ];
}
