import 'package:equatable/equatable.dart';

class Item extends Equatable {
  final int? id;
  final String? title;
  final String? code1;
  final String? code2;
  final String? barcode;
  final String? barcodes;
  final double? price1;
  final double? price2;
  final double? price3;
  final double? price4;
  final double? priceMin;
  final String? category1;
  final String? category2;
  final String? category3;
  final String? category4;
  final String? category5;
  final String? category6;
  final String? unit;
  final int? service;
  final double? avgCost;
  final double? lastCost;
  final double? lastNetCost;
  final DateTime? lastPurchased;
  final double? qty;
  final double? reorderQty;
  final int? starred;
  final double? discountPer1;
  final String? taxType;
  final int? priceIncludeTax1;
  final int? dead;
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

  Item copywith({
    String? title,
    String? code1,
    String? code2,
    String? barcode,
    String? barcodes,
    double? price1,
    double? price2,
    double? price3,
    double? price4,
    double? priceMin,
    String? category1,
    String? category2,
    String? category3,
    String? category4,
    String? category5,
    String? category6,
    String? unit,
    int? service,
    double? avgCost,
    double? lastCost,
    double? lastNetCost,
    DateTime? lastPurchased,
    double? qty,
    double? reorderQty,
    int? starred,
    double? discountPer1,
    String? taxType,
    int? priceIncludeTax1,
    int? dead,
    String? photo,
    String? more,
  }) {
    return Item(
      title: title ?? this.title,
      code1: code1 ?? this.code1,
      code2: code2 ?? this.code2,
      barcode: barcode ?? this.barcode,
      barcodes: barcodes ?? this.barcodes,
      price1: price1 ?? this.price1,
      price2: price2 ?? this.price2,
      price3: price3 ?? this.price3,
      price4: price4 ?? this.price4,
      priceMin: priceMin ?? this.priceMin,
      category1: category1 ?? this.category1,
      category2: category2 ?? this.category2,
      category3: category3 ?? this.category3,
      category4: category4 ?? this.category4,
      category5: category5 ?? this.category5,
      category6: category6 ?? this.category6,
      unit: unit ?? this.unit,
      service: service ?? this.service,
      avgCost: avgCost ?? this.avgCost,
      lastCost: lastCost ?? this.lastCost,
      lastNetCost: lastNetCost ?? this.lastNetCost,
      lastPurchased: lastPurchased ?? this.lastPurchased,
      qty: qty ?? this.qty,
      reorderQty: reorderQty ?? this.reorderQty,
      starred: starred ?? this.starred,
      discountPer1: discountPer1 ?? this.discountPer1,
      taxType: taxType ?? this.taxType,
      priceIncludeTax1: priceIncludeTax1 ?? this.priceIncludeTax1,
      dead: dead ?? this.dead,
      photo: photo ?? this.photo,
      more: more ?? this.more,
    );
  }

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
        id: json['id'],
        title: json['title'],
        code1: json['code1'],
        code2: json['code2'],
        barcode: json['barcode'],
        barcodes: json['barcodes'],
        price1: double.parse(json['price1'].toString()),
        price2: double.parse(json['price2'].toString()),
        price3: double.parse(json['price3'].toString()),
        price4: double.parse(json['price4'].toString()),
        priceMin: double.parse(json['price_min'].toString()),
        category1: json['category1'],
        category2: json['category2'],
        category3: json['category3'],
        category4: json['category4'],
        category5: json['category5'],
        category6: json['category6'],
        unit: json['unit'],
        service: json['service'],
        avgCost: double.parse(json['avg_cost'].toString()),
        lastCost: double.parse(json['last_cost'].toString()),
        lastNetCost: double.parse(json['last_net_cost'].toString()),
        lastPurchased: DateTime.parse(json['last_purchased']),
        qty: double.parse(json['qty'].toString()),
        reorderQty: double.parse(json['reorder_qty'].toString()),
        starred: json['starred'],
        discountPer1: double.parse(json['discount_per1'].toString()),
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
