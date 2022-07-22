import 'package:dev_store/models/item.dart';
import 'package:equatable/equatable.dart';

class ItemUnits extends Equatable {
  final num? id;
  final num? itemId;
  final num? sn;
  final String? unit;
  final num? uqty1;
  final num? uqty2;
  final num? price1;
  final num? price2;
  final num? price3;
  final num? price4;
  final String? barcode;
  final String? barcodes;
  final num? unitDefaultSale;
  final num? unitDefaultPurchase;
  final num? unitDefaultOthers;

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

  factory ItemUnits.fromJson(Map<String, dynamic> json) {
    return ItemUnits(
        id: json['id'],
        itemId: json['item_id'],
        sn: json['sn'],
        unit: json['unit'],
        uqty1: json['uqty1'],
        uqty2: json['uqty2'],
        price1: json['price1'],
        price2: json['price2'],
        price3: json['price3'],
        price4: json['price4'],
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
