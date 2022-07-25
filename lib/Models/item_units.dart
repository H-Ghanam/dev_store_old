import 'package:equatable/equatable.dart';

class ItemUnits extends Equatable {
  final int? id;
  final int? itemId;
  final int? sn;
  final String? unit;
  final double? uqty1;
  final double? uqty2;
  final double? price1;
  final double? price2;
  final double? price3;
  final double? price4;
  final String? barcode;
  final String? barcodes;
  final int? unitDefaultSale;
  final int? unitDefaultPurchase;
  final int? unitDefaultOthers;

  const ItemUnits(
      {this.id,
      this.itemId,
      this.sn,
      this.unit,
      this.uqty1,
      this.uqty2,
      this.price1,
      this.price2,
      this.price3,
      this.price4,
      this.barcode,
      this.barcodes,
      this.unitDefaultSale,
      this.unitDefaultPurchase,
      this.unitDefaultOthers});

  ItemUnits copyWith({
    int? id,
    int? itemId,
    int? sn,
    String? unit,
    double? uqty1,
    double? uqty2,
    double? price1,
    double? price2,
    double? price3,
    double? price4,
    String? barcode,
    String? barcodes,
    int? unitDefaultSale,
    int? unitDefaultPurchase,
    int? unitDefaultOthers,
  }) {
    return ItemUnits(
      id: id ?? this.id,
      itemId: itemId ?? this.itemId,
      sn: sn ?? this.sn,
      unit: unit ?? this.unit,
      uqty1: uqty1 ?? this.uqty1,
      uqty2: uqty2 ?? this.uqty2,
      price1: price1 ?? this.price1,
      price2: price2 ?? this.price2,
      price3: price3 ?? this.price3,
      price4: price4 ?? this.price4,
      barcode: barcode ?? this.barcode,
      barcodes: barcodes ?? this.barcodes,
      unitDefaultSale: unitDefaultSale ?? this.unitDefaultSale,
      unitDefaultPurchase: unitDefaultPurchase ?? this.unitDefaultPurchase,
      unitDefaultOthers: unitDefaultOthers ?? this.unitDefaultOthers,
    );
  }

  factory ItemUnits.fromJson(Map<String, dynamic> json) {
    return ItemUnits(
        id: json['id'],
        itemId: json['item_id'],
        sn: json['sn'],
        unit: json['unit'],
        uqty1: double.parse(json['uqty1'].toString()),
        uqty2: double.parse(json['uqty2'].toString()),
        price1: double.parse(json['price1'].toString()),
        price2: double.parse(json['price2'].toString()),
        price3: double.parse(json['price3'].toString()),
        price4: double.parse(json['price4'].toString()),
        barcode: json['barcode'],
        barcodes: json['barcodes'],
        unitDefaultSale: json['unit_default_sale'],
        unitDefaultPurchase: json['unit_default_purchase'],
        unitDefaultOthers: json['unit_default_others']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['item_id'] = itemId;
    data['sn'] = sn;
    data['unit'] = unit;
    data['uqty1'] = uqty1;
    data['uqty2'] = uqty2;
    data['price1'] = price1;
    data['price2'] = price2;
    data['price3'] = price3;
    data['price4'] = price4;
    data['barcode'] = barcode;
    data['barcodes'] = barcodes;
    data['unit_default_sale'] = unitDefaultSale;
    data['unit_default_purchase'] = unitDefaultPurchase;
    data['unit_default_others'] = unitDefaultOthers;
    return data;
  }

  @override
  List<Object?> get props => [
        id,
        itemId,
        sn,
        unit,
        uqty1,
        uqty2,
        price1,
        price2,
        price3,
        price4,
        barcode,
        barcodes,
        unitDefaultSale,
        unitDefaultPurchase,
        unitDefaultOthers
      ];
}
