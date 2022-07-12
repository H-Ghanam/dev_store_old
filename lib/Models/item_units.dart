class ItemUnits {
  int? id;
  int? itemId;
  int? sn;
  String? unit;
  int? uqty1;
  int? uqty2;
  int? price1;
  int? price2;
  int? price3;
  int? price4;
  String? barcode;
  String? barcodes;
  int? unitDefaultSale;
  int? unitDefaultPurchase;
  int? unitDefaultOthers;

  ItemUnits(
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

  ItemUnits.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    itemId = json['item_id'];
    sn = json['sn'];
    unit = json['unit'];
    uqty1 = json['uqty1'];
    uqty2 = json['uqty2'];
    price1 = json['price1'];
    price2 = json['price2'];
    price3 = json['price3'];
    price4 = json['price4'];
    barcode = json['barcode'];
    barcodes = json['barcodes'];
    unitDefaultSale = json['unit_default_sale'];
    unitDefaultPurchase = json['unit_default_purchase'];
    unitDefaultOthers = json['unit_default_others'];
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
}
